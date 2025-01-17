import numpy as np
from nn_config import POINT_NORMALIZATION

class BetSituation(object):
    def __init__(self,hand_size,other_bets,trump,agents):
        self.hand_size = hand_size
        self.other_bets = other_bets
        self.trump = trump
        self.agents = agents

class SubroundSituation(object):
    """
    Aims to be a self-contained object which contains all the information needed to
    fully define a subround sitation. Using this info combined with info about it's own hand,
    any agent can determine what card to play in a given situation.
    """
    def __init__(self,hand_size,card_stack,trump,highest_adjusted_val,agents,publicly_played_cards):
        self.hand_size = hand_size #Used as input to NN. Useful to determine how bad a 0 bet would be for you, for example.
        self.card_stack = card_stack #Used to determine forced suit, for example
        self.trump = trump
        self.highest_adjusted_val = highest_adjusted_val #Saves computation by saving the highest adjusted value card on the stack
        self.agents = agents #Characteristics of both winning and future agents are useful in determining correct action
        self.publicly_played_cards = publicly_played_cards.astype('int8') #Useful for determining which cards can still be played in the subround

    def printSubroundSituation(self):
        """
        Effectively achieves the __repr__ function, but not linked to the __repr__
        method because this representation is clunkier than you might want in many cases.
        """
        print("Printing info on SubroundSituation:")
        SUIT_ORDER = ["Spades","Hearts","Diamonds","Clubs","No Trump"]
        print(f"Hand size: {self.hand_size}, Trump: {SUIT_ORDER[self.trump]}")
        print(f"Card stack (with highest adjusted value {self.highest_adjusted_val}):")
        for card in self.card_stack:
            print(card.name)
        print("Publicly played cards:")
        print(self.publicly_played_cards)
        print("Agents:")
        for agent in self.agents:
            print(f"Agent points {agent.points}, bet progress {agent.subrounds_won}/{agent.bet}, visibly out of suits {agent.visibly_out_of_suit}")
            print("Agent hand:  ",end="\t")
            for card in agent.hand:
                print(card.name,end='\t')
            print(" ")

def calcSubroundAdjustedValue(card,srs):
    """
    Given a card and subround situation, returns a simplified value for the card.

    Simplified values are defined as follows:

    Cards in the trump suit recieve a value from 14(2) - 26(Ace). This corresponds to the fact that
    even the lowest trump card beats the highest card from any other suit.

    Cards in the secondary suit recieve values from 1(2) - 13(Ace), corresponding to the fact they beat
    other suits but lose to even the lowest trump card.

    Finally, cards from all other suits recieve a value of 0, indicating that they cannot win the current subround.
    """
    trump_suit = srs.trump
    secondary_suit = srs.card_stack[0].suit if (len(srs.card_stack) > 0) else None

    if card.suit == trump_suit:
        return (card.value)+13
    elif card.suit == secondary_suit:
        return (card.value)
    elif secondary_suit == None: #if there is no sceondary trump yet, this card is now secondary trump
        return (card.value)
    else:
        return 0

def convertSubroundSituationToActionState(srs, agent, chosen_card):
    """
    Given a SubroundSituation object, current Agent, a list of the Agents going after the current Agent, 
    a list of publicly available played cards (1 at index i if card i has been publicly played), and the chose card,
    outputs an action state suitable for input into the action Q function. Action state is of the form:

    [lstm_input for players still to go, 
    [current winner relative points, current winner bet, current winner earned (normalized),
    {-1,1} binary encoding of cards still in game, one-hot encoding of action card, one-hot encoding of trump suit,
    agent bet, agent evaluation of subround winning chance, number of cards in hand]]
    """
    next_agent_index = len(srs.card_stack)+1
    remaining_agents = srs.agents[next_agent_index:]

    #~~~~~~Determine next_agents series to feed into LSTM~~~~~~~~~~
    next_agents_series = -1*np.ones((3,7))
    for i, next_agent in enumerate(remaining_agents):
        relative_points = (next_agent.points - agent.points)/POINT_NORMALIZATION
        next_agent_data = [relative_points,next_agent.bet/13,next_agent.subrounds_won/13] + next_agent.visibly_out_of_suit
        next_agents_series[i,:] = np.array(next_agent_data)

    winning_agent_state = -1*np.ones(3) #by default, there is no winning player so we have all -1s to be masked
    if len(srs.card_stack) > 0:
        #determine currently winning player
        for i,card in enumerate(srs.card_stack):
            if calcSubroundAdjustedValue(card,srs) == srs.highest_adjusted_val:
                winning_agent = srs.agents[i] #TODO: winning agent referenced before assignemnt ???
        
        #~~~~~~~~~winning agent information~~~~~~~~~~~~
        winning_agent_state[0] = (winning_agent.points - agent.points)/POINT_NORMALIZATION
        winning_agent_state[1] = winning_agent.bet/13
        winning_agent_state[2] = winning_agent.subrounds_won/13

    parameter_state = np.zeros(112)
    #~~~~~~~~~~cards still available information~~~~~~~~~~~~
    cards_still_available = np.ones(52,dtype=int)
    #if card is in publicly played cards, it can no longer be played by someone else
    cards_still_available = np.bitwise_xor(cards_still_available,srs.publicly_played_cards)
    #if card is in your hand, it can't be played by someone else
    for card in agent.hand:
        cards_still_available[card.index] = 0
    cards_still_available[chosen_card.index] = 0 #the card you're about to play can't be played by someone else
    cards_still_available[cards_still_available==0] = -1 #replace zeros with -1s for training performance

    parameter_state[:52] = cards_still_available

    #~~~~~~~~~~~~card about to be played information~~~~~~~~~~~~
    card_to_be_played = np.zeros(52,dtype=int)
    card_to_be_played[chosen_card.index] = 1

    parameter_state[52:104] = card_to_be_played

    #~~~~~~~~~~~~one-hot trump encoding~~~~~~~~~~~~~~~~~~~~~~~~
    if srs.trump < 4: parameter_state[104+srs.trump] = 1 #if trump is 4, then there is no trump
    parameter_state[108] = agent.bet/13
    parameter_state[109] = agent.subrounds_won/13
    #NOTE: changing location of this parameter will break chooseCardAndReturnNetworkEvals
    parameter_state[110] = agent.evalSubroundWinChance(srs,chosen_card)
    parameter_state[111] = srs.hand_size/13

    return [next_agents_series, winning_agent_state, parameter_state]

def convertSubroundSituationToEvalState(srs, agent, chosen_card):
    """
    Input SubroundSituation object, current Agent, a list of the Agents going after the current Agent,
    a list of publicly played cards (1 at index i if card i has been publicly played), and the chosen Card.

    Returns None if the chosen card always loses or wins, as this is not a state where the neural network will be
    used. Otherwise, returns the evaluation state in the following form:

    [lstm_input for players still to go, 
    [{-1,1} binary encoding of cards still in game, one-hot encoding of trump suit, value of chosen card, 
    agent bet, agent percentage of subrounds won, number of cards in hand]]
    """
    next_agent_index = len(srs.card_stack)+1
    remaining_agents = srs.agents[next_agent_index:]

    adjusted_card_val = calcSubroundAdjustedValue(chosen_card,srs)

    if adjusted_card_val < srs.highest_adjusted_val: return None #always loses, don't need NN eval
    elif len(srs.card_stack) == 3 and adjusted_card_val > srs.highest_adjusted_val: return None #always wins, don't need NN eval
    else: #state which NN needs to predict
        #Determine next_agents series to feed into LSTM
        next_agents_series = -1*np.ones((3,7))
        for i, next_agent in enumerate(remaining_agents):
            relative_points = (next_agent.points - agent.points)/POINT_NORMALIZATION
            next_agent_data = [relative_points,next_agent.bet/13,next_agent.subrounds_won/13] + next_agent.visibly_out_of_suit
            next_agents_series[i,:] = np.array(next_agent_data)

        #Determine parameter state
        parameter_state = np.zeros(60)
        cards_still_available = np.ones(52,dtype=int)
        #if card is in publicly played cards, it can no longer be played by someone else
        cards_still_available = np.bitwise_xor(cards_still_available,srs.publicly_played_cards)
        #if card is in your hand, it can't be played by someone else
        for card in agent.hand:
            cards_still_available[card.index] = 0
        cards_still_available[chosen_card.index] = 0 #the card you're about to play can't be played by someone else
        cards_still_available[cards_still_available==0] = -1 #replace zeros with -1s for training performance

        parameter_state[:52] = cards_still_available
        if srs.trump < 4: parameter_state[52+srs.trump] = 1 #if trump is 4, then there is no trump
        parameter_state[56] = adjusted_card_val/26
        parameter_state[57] = agent.bet/13
        parameter_state[58] = agent.subrounds_won/13
        parameter_state[59] = srs.hand_size/13

        #convert to objects with batch size 1 so that it can be fed into neural networks
        # next_agents_series_w_batch1 = np.zeros([1]+list(np.shape(next_agents_series)))
        # parameter_state_w_batch1 = np.zeros([1]+list(np.shape(parameter_state)))

        # return [next_agents_series_w_batch1, parameter_state_w_batch1]
        return [next_agents_series, parameter_state]

def convertBetSituationToBetState(bs, agent, bet):
    """
    Given bet situation, hand, and bet value, outputs a bet state suitable for input into
    the bet Q function. Bet state is of the form:

    [{-1,1} binary encoding of hand - bet position - existence of zero bet - % of bets already taken - one-hot encoding of trump - bet amount]
    """
    bet_state = -1*np.ones(60)
    #add cards to bet data point
    for card in agent.hand:
        bet_state[card.index] = 1
    bet_state[52] = len(bs.other_bets)
    bet_state[53] = 1 if 0 in bs.other_bets else 0 #1 if there's been a zero bet
    bet_state[54] = sum(bs.other_bets)/bs.hand_size #sum of previous bets divided by max. Can divide by hand b/c no cards have been played
    if bs.trump < 4: bet_state[55+bs.trump] = 1 #if trump is 4, then there is no trump

    bet_state[59] = bet

    return bet_state

def postProcessTrainData(train_data_list):
    """
    Converts list of training data to batch form. Expects training data of the form:
    [[np.array(1,x,y),np.array(1,a,b)...],
     [np.array(1,x,y),np.array(1,a,b)...],
     ...,
     [np.array(1,x,y),np.array(1,a,b)...]]

    and converts to the form:
    [np.array(n,x,y),np.array(n,a,b)...]
    """
    example_train_data = train_data_list[0]
    
    #generate correctly sized numpy array
    reformatted_train_data = []
    batch_size = len(train_data_list)

    for example_train_data_element in example_train_data:
        new_shape = [batch_size] + list(np.shape(example_train_data_element))
        reformatted_train_data.append(np.zeros((new_shape)))

    #fill array with data
    for data_type_index in range(len(reformatted_train_data)):
        for i in range(batch_size):
            reformatted_train_data[data_type_index][i,:] = train_data_list[i][data_type_index]
        
    return reformatted_train_data

def postProcessBetTrainData(train_data_list):
    """
    Converts list of training data to batch form. Expects training data of the form:
    [[np.array(1,x,y),
     ...,
     [np.array(1,x,y)]

    and converts to the form:
    [np.array(n,x,y)]
    """
    example_train_data = train_data_list[0]
    
    #generate correctly sized numpy array
    batch_size = len(train_data_list)
    
    new_shape = [batch_size] + list(np.shape(example_train_data))
    reformatted_train_data = np.zeros((new_shape))

    #fill array with data
    for i in range(batch_size):
        reformatted_train_data[i,:] = train_data_list[i]
        
    return reformatted_train_data
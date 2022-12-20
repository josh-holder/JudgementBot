from JudgmentUtils import calcSubroundAdjustedValue
from SimpleAgent import SimpleAgent
from JudgmentGame import JudgmentGame
from tensorflow import keras
import tensorflow as tf
from tf.keras import layers
from tensorflow.keras.layers import concatenate, Masking
from tensorflow.keras import Input, Model


class DQNAgent(SimpleAgent):
    def evaluateSubroundWinChance(self,srs):
        """
        Given a subround, evaluates the chance that playing a given card will win the round.
        Deterministically defines win chance as zero if the given action is playing a card lower
        that the current highest card value.
        Otherwise, uses a NN representation to determine this.

        Inputs:
        - Action
        - Cards still possible to play (one-hot encoding with 52 binary values)
        - Trump suit (4 binary values, also one-hot encoding)
        - Highest card played (0 if off-suit, 1-13 if secondary suit, 14-26 if trump suit)
        - Agent bet
        - Agent subrounds already won
        - Sequence of information on player remaining, including:
            - Player relative points
            - Player bet
            - Player earned (normalized)
            - Suits remaining (4 binary values)

        Outputs:
        - List of probabilities of winning the subround, with index i correpsonding to the probability
            of winning the subround with card i in the agent's hand.
        """
        trump_suit = srs.trump
        secondary_suit = srs.card_stack[0].suit if (len(srs.card_stack) > 0) else None
        
        #Calculate maximum adjusted value on the stack thus far
        max_adjusted_val = 0
        for card in srs.card_stack:
            adj_val = calcSubroundAdjustedValue(card,trump_suit,secondary_suit)
            if adj_val > max_adjusted_val: max_adjusted_val = adj_val

        win_chances = []
        for card in self.hand:
            adjusted_card_val = calcSubroundAdjustedValue(card,trump_suit,secondary_suit)

            #If the card already loses to an existing card on the stack, win_chance is zero
            if adjusted_card_val < max_adjusted_val: win_chances.append(0)
            #Otherwise, if all other players have already played a card and this card is higher, win chance is 1
            elif len(srs.card_stack) == 3 and adjusted_card_val > max_adjusted_val: win_chances.append(1)
            #Otherwise, we evaluate the win chance with a neural network:
            else: pass

            
        return win_chances


    def playCard(self, srs):
        """
        Given a subround situation, determines what card to play:

        --EVALUATION Q() FUNCTION:--
        State input information:
        - cards still possible to play (52)
        - trump (4)
        - Player played info - RNN architecture
            - value of card played (26) (0 if off-suit, 1-13 if secondary suit, 14-26 if trump suit)
            - player relative points (1)
            - player bet (1)
            - player earned (1)
            - suits remaining (4)
        - Players remaining architecture - RNN architecture
            - player relative points (1)
            - player bet (1)
            - player earned (1)
            - suits remaining (4)
        -Player bet
        -Player earned

        Actions - 52 cards in hand (see connect 4 implementation for removal of impossible moves)
        
        Neural network learns action value function for particular state-action pair - 0 if loss, 1 if win given a particular card.
        
        After the end of every round, evaluate loss on what you predicted vs what you ended up with
        Good reward signal!
        --------------------------
        ACTION Q FUNCTION - predicted reward of given action (in terms of actual points)
        Inputs:
        - Probabilities of winning with every card in hand from evaluation network
        - player bet
        - player earned
        - cards still possible to play (52)
        - trump (4)

        (or just two heads, trained slightly differently? probably this)
        (Read AlphaGo paper)

        Output: card to play from hand

        --BET MODEL (Action value) ---------
        - same inputs as current bet model
        -(+points, look at transfer learning) (current data is zero point differential, retrain)
        ------------------------------------

        Model is given.
        First start off-policy with SimpleAgent epsilon-greedy actions,
        epsilon-greedy Neural-Network based bet actions to kickstart training.
        -After each timestep, run gradient descent on evaluation Q function
        -After each round, run gradient descent on action Q function
        -After each round, run gradient descent on bet Q function
        Run until near even with HumanBetAgent.
        Then, run fully model-free for finetuning until completion.

        Questions:
        - How to go about training RNNs for input into evaluation function
        - How to go about adding multiple heads to one function, using one in the other?
        """
        self.evaluateSubroundWinChance(srs)
        # print("???")
        # print(srs.card_stack)
        card = super().playCard(srs)
        return card

if __name__ == "__main__":
    time_series_input = Input(shape=(3,7))
    time_series_mask = Masking()(time_series_input)
    time_series_LSTM = layers.LSTM(20, activation="relu", unroll=True)(time_series_mask)

    parameters = Input(shape=59)

    all_params = concatenate([time_series_LSTM, parameters])

    MLP_1 = layers.Dense(48,activation="relu")(all_params)
    Dropout_1 = layers.Dropout(0.1)(MLP_1)

    MLP_2 = layers.Dense(24,activation="relu")(Dropout_1)
    Dropout_2 = layers.Dropout(0.1)(MLP_2)

    MLP_3 = layers.Dense(12,activation="relu")(Dropout_2)
    Dropout_3 = layers.Dropout(0.1)(MLP_3)

    win_value = layers.Dense(1,activation="relu")(Dropout_3)

    model = Model(inputs=[time_series_input,parameters],outputs=win_value)
    model.compile(loss = tf.losses.MeanSquaredError(),
                      optimizer = tf.optimizers.Adam())
    print(model.summary())
    lstm_input = np.zeros((1,3,7))
    lstm_input[0,:,:] = [[0.1,0.2,0.5,1,1,1,1],
                       [-0.1,0.2,0,1,1,1,1],
                       [0,0,0,0,0,0,0]]
    # lstm_input[1,:,:] = [[0.1,0.2,0.5,1,1,1,1],
    #                    [-0.1,0.2,0,1,1,1,1],
    #                    [1,1,1,1,2,0,1]]

    lstm_input_list = [[[0.1,0.2,0.5,1,1,1,1],
                       [-0.1,0.2,0,1,1,1,1]],
                       [[0.1,0.2,0.5,1,1,1,1],
                       [-0.1,0.2,0,1,1,1,1],
                       [1,1,1,1,2,0,1]]]

    padded_lstm_inputs = tf.keras.preprocessing.sequence.pad_sequences(lstm_input_list,padding="post",dtype="float")

    mask_test = Masking()

    print(padded_lstm_inputs)
    masked_list = mask_test(padded_lstm_inputs)
    print(masked_list._keras_mask)

    param_input = np.zeros((1,59))
    param_input[0,:] = [1,1,1,0,1,1,0,0,0,0,0,0,0,1,1,1,0,1,1,0,0,0,0,0,0,0,1,1,1,0,1,1,0,0,0,0,0,0,0,1,1,1,0,1,1,0,0,0,0,0,0,0,0,1,0,0,0.1,0,1]
    print(model([lstm_input,param_input]))
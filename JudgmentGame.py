from xml.dom.minidom import Attr
from pkg_resources import evaluate_marker
from JudgmentAgent import JudgmentAgent
from deck_of_cards import DeckOfCards
from Situations import BetSituation, SubroundSituation
from SimpleAgent import SimpleAgent
from HumanAgent import HumanAgent
from HumanBetAgent import HumanBetAgent
from JudgmentUtils import calcSubroundAdjustedValue
import time

SUIT_ORDER = ["Spades","Hearts","Diamonds","Clubs","No Trump"]
DEFAULT_HAND_SIZES = [1,2,3,4,5,6,7,8,9,10,11,12,13,12,11,10,9,8,7,6,5,4,3,2,1]
DEFAULT_AGENTS = [JudgmentAgent(0),JudgmentAgent(1),JudgmentAgent(2),JudgmentAgent(3)]

class JudgmentGame(object):
    def __init__(self,agents=DEFAULT_AGENTS,hand_sizes=DEFAULT_HAND_SIZES,game_verbose=0,print_final_tables=0):
        self.hand_sizes = hand_sizes
        self.print_final_tables = print_final_tables
        self.agents = agents
        self.game_verbose = game_verbose

    def playGame(self):
        """
        Carries out simulated judgement game.

        For each hand size in self.hand_sizes,
        Deals cards to each agent, then initiates betting,
        and then incites Agents to play subrounds until no cards remain.
        Upon completion, distributes points to each agent accordingly.

        Tallies points cumulatively and returns a list of agents.
        """
        for round, hand_size in enumerate(self.hand_sizes):
            self.resetAgents()
            trump = round % len(SUIT_ORDER)

            if self.game_verbose: print("~~ Round {}, Hand Size {}, Trump {} ~~".format(round,hand_size,SUIT_ORDER[trump]))

            deck = DeckOfCards()

            #deal cards
            for card_num in range(hand_size):
                for agent in self.agents:
                    agent.drawCard(deck.give_random_card())
            
            
            #initiate bets
            bets = []
            bs = BetSituation(hand_size,bets,trump,self.agents)
            for agent in self.agents:
                bets.append(agent.makeBet(bs))
                bs.other_bets = bets

            if self.game_verbose: print("Grabbed bets: {}".format(bets))

            starting_agent = 0
            turn_order = self.agents
            for subround in range(hand_size):
                #set new turn order based on who won last round
                turn_order = turn_order[starting_agent:]+turn_order[:starting_agent]
                srs = SubroundSituation(hand_size,[],trump,0,turn_order)

                #Each agent plays a card from it's hand
                for agent in turn_order:
                    played_card = agent.playCard(srs)
                    srs.highest_adjusted_val = max(srs.highest_adjusted_val, calcSubroundAdjustedValue(played_card, srs))
                    srs.card_stack.append(played_card)

                winning_agent_ind = self.evaluateSubround(srs)
                turn_order[winning_agent_ind].subrounds_won += 1
                starting_agent = winning_agent_ind

                if self.game_verbose: 
                    print("Subround {}, order is now {} {} {} {} - cards played were:".format(subround,turn_order[0].id,turn_order[1].id,turn_order[2].id,turn_order[3].id))
                    for card in srs.card_stack:
                        print(card.name,end=", ")
                    print("\nWinning card is: {}".format(srs.card_stack[winning_agent_ind].name))

                if self.print_final_tables:
                    for agent in self.agents:
                        try:
                            agent.displayTable(srs)
                            print(f"Player {self.agents[winning_agent_ind].id} won trick with {srs.card_stack[winning_agent_ind].name}")
                            input("Press any key to continue")
                        #If agent doesn't have a way to print the table (i.e. is not the Human player)
                        except AttributeError:
                            pass

            if self.game_verbose:
                for agent in self.agents:
                    print("Agent {} bet {}, won {}, had {} points.".format(agent.id,agent.bet,agent.subrounds_won,agent.points))

            #update points
            for agent in self.agents:
                agent.updateScore(hand_size)

            if self.game_verbose:
                for agent in self.agents:
                    print("Thus, new agent score is {}.".format(agent.points))
                print(" ")

            self.agents.append(self.agents.pop(0)) #shift order of agents for next round
        
        self.agents = sorted(self.agents, key=lambda x: x.id)

        return self.agents

    def evaluateSubround(self,srs):
        """
        Given a stack of cards, evaluates which card won,
        and returns that index.
        """
        #Shift the values of any trump card up by 13 and
        #keep the values of secondary trump cards the same.
        #Set values of other suits to zero, and simply pick the card
        #with the highest value
        card_values = []
        for card in srs.card_stack:
            card_values.append(calcSubroundAdjustedValue(card,srs))

        #return index in card_values where the card of maximum value was found
        return card_values.index(max(card_values))


    def resetAgents(self):
        """
        Resets hands, bets, subrounds won, available cards of all
        agents in game. Does not reset points.
        """
        for agent in self.agents:
            agent.reset()

    def resetGame(self):
        """
        Resets all properties agents, including points.
        """
        for agent in self.agents:
            agent.reset()
            agent.points=0


if __name__ == "__main__":
    # scores = [0,0,0,0]
    # for game_num in range(25):
    #     jg = JudgmentGame(game_verbose=1,agents=[SimpleAgent(0),JudgmentAgent(1),JudgmentAgent(2),JudgmentAgent(3)])
    #     agents = jg.playGame()
    #     for i,agent in enumerate(agents):
    #         scores[i] += agent.points

    # print("Final Scores: {}".format([score for score in scores]))

    jg = JudgmentGame(game_verbose=1,agents=[HumanBetAgent(0),SimpleAgent(1),SimpleAgent(2),SimpleAgent(3)])
    jg.playGame()
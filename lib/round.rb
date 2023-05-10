class Round
    attr_reader :deck, :turns 
    attr_accessor

    def initialize(deck)
        @deck = deck 
        @turns = []
    end 


    def take_turn(guess) 

        card = deck.cards.shift
        Turn.new(guess, card) 
    end

    # 1. read the card
    # 2. make a guess
    # 3. new card is loaded 
    #4. score is at the END of the round. 


    def current_card
        deck.cards[0]
    end 

    def current_question
        deck.cards[0].question
    end 


end


#need to proceed to next card following a round
#round will process response and record a guess

#take_turn takes a string as the guess and create a new turn object
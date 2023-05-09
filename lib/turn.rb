class Turn 

    attr_reader :guess, :card
    #attr_accessor

    def initialize(guess, card)
        @guess = guess
        @card = card 
    end 


    def correct?
        guess == card.answer
    end     
    
    def feedback 
        correct? ? "Correct!" : "WRONG!"
    end 

end 
class Turn 

    attr_reader :card 
    attr_accessor :guess

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
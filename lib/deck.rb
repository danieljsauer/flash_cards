class Deck 

    attr_reader :cards
    #attr_accessor 

    def initialize(cards)
        @cards = cards
        #Why dont I have to declare cards as an array here? Like we did for dog toys?
        #Is it because we are passing through an array and not entering information into one? 
    end 

    def count
        @cards.length 
    end 


    def make_deck
        #Would this belong in cards? 
    end 

    def cards_in_category

    end 

end
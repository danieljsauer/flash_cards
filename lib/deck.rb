class Deck 

    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end 

    def count
        cards.length 
    end 


    def make_deck
        #Would this belong in cards? 
    end 

    def cards_in_category(category)
        cic = cards.find_all do |card|
            card.category == category
            end 
        cic.count
    end

end
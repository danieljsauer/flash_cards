class Deck 

    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end 

    def count
        cards.length 
    end 

    def add_card(card)
        cards << card 
    end 

    def cards_in_category(category)
        cic = cards.find_all do |card|
            card.category == category
            end 
        cic.count
    end

end
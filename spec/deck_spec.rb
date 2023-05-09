require './lib/card'
require './lib/deck'

RSpec.describe Deck do
    it 'exists' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("First US President?", "Washington", :history)
        card3 = Card.new("Best House?", "Lannister", :fiction)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck).to be_instance_of(Deck)
        p deck.cards 
    end
    
    it 'adds proper number of cards into deck' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("First US President?", "Washington", :history)
        card3 = Card.new("Best House?", "Lannister", :fiction)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck.count).to eq(3)
    end 
    
    it 'counts the number of cards within the deck for a specified category' do
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("First US President?", "Washington", :history)
        card3 = Card.new("Best House?", "Lannister", :fiction)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck.cards_in_category(:history)).to eq(1)
    end 

    it "can add new cards into the deck" do 

        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card2 = Card.new("First US President?", "Washington", :history)
        card3 = Card.new("Best House?", "Lannister", :fiction)

        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        card4 = Card.new("Best Game Show?", "Jeopardy", :trivia)

        deck.add_card(card4)

        expect(deck.cards[3]).to eq(card4)
        p deck 
    end 


end 
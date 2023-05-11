require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

describe Round do
    describe "Initialize" do 
        it "exists" do 

            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            expect(round).to be_instance_of(Round)
        end

        it "contains a deck of cards" do

            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            expect(round.deck.count).to eq(3)
        end 
    end 

    describe "Setup before turn" do 
        it "keeps track of turn" do
            
            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            expect(round.turns).to eq([])
        end 

        it "reads current card" do
            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            expect(round.current_card).to eq(deck.cards[0])
        end

        it "reads current question" do
            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            expect(round.current_question).to eq("What is the capital of Alaska?")
        end
    end 

    describe "take_turn" do 
        it "creates a new turn instance" do 
            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            new_turn = round.take_turn("denver")
            expect(new_turn).to be_instance_of(Turn) 
        end

        it "checks for correct answer" do 
            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            new_turn = round.take_turn("denver")
            expect(new_turn.feedback).to eq("WRONG!") 
        end

        it "moves on to the next card" do 
            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            new_turn = round.take_turn("denver")
            new_turn = round.take_turn("Washington")
            expect(new_turn.feedback).to eq("Correct!") 

        end

        it "keeps track of the number of turns" do
            card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card2 = Card.new("First US President?", "Washington", :history)
            card3 = Card.new("Best House?", "Lannister", :fiction)

            cards = [card1, card2, card3]

            deck = Deck.new(cards)
            round = Round.new(deck)
            new_turn = round.take_turn("denver")
            new_turn = round.take_turn("Washington")
            expect(round.turns.count).to eq(2) 
        end 




    end 
end 
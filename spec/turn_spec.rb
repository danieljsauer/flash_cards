require './lib/turn'
require './lib/card'

RSpec.describe Turn do


    it 'exists' do
      card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      turn = Turn.new("Juneau", card)
  
      expect(turn).to be_instance_of(Turn)
    end

    it "checks for correct answer" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

        expect(turn.correct?).to be true 

      end 

      it "gives proper feedback" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

        expect(turn.feedback).to eq("Correct!") 

      end 

      it "checks for correct answer" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Denver", card)

        expect(turn.correct?).to be false 

      end 

      it "gives proper feedback" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Denver", card)

        expect(turn.feedback).to eq("WRONG!") 

      end 


    end 
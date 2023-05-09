class Card
    
    attr_reader :question, :answer, :category
    #attr_accessor

    def initialize(question, answer, category)
        @question = question
        @answer = answer
        @category = category
    end

end 
class Quiz 
    attr_accessor :q1, :q2, :q3, :q4, :q5
    
    $score = 0
    
    def initialize(q1,q2,q3,q4,q5)
        @q1 = q1
        @q2 = q2
        @q3 = q3
        @q4 = q4
        @q5 = q5
    end
    
    def score
        if @q1 == "9 and -6" 
            $score = $score + 1
        end
        if @q2 == "saint petersburg"
            $score = $score + 1
        end
        if @q3 == "communism"
            $score = $score + 1
        end
        if @q4 == "12"
           $score = $score + 1
        end
        if @q5 == "196"
            $score = $score + 1
        end
        return $score
    end
    def message
        if $score == 5
           return "Great Job!"
        end
        if $score == 4
            return "You did great but give it another shot!"
        end
        if $score == 3
          return "Pretty good, but you should definately try again."
        end
        if $score == 2
            return "You should give it another shot."
        end
        if $score == 1
         return "I know you can give it another shot."
        end
        if $score == 0
            return "Try harder next time."
        end
    end
end
# game1 = Quiz.new("9 and -6", "saint petersburg", "democracy", "12", "196")
# puts game1.score
# puts game1.message

 
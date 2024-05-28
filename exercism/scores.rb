
# refactored code using attr_reader
class HighScores
    attr_reader :scores
    def initialize(scores)
      @scores = scores
    end
    def latest
      scores.last
    end
    def personal_best
      scores.max
    end
    def personal_top_three
      scores.uniq.max(3)
    end
    def latest_is_personal_best?
      latest == personal_best 
    end
end
  
# original submission

# class HighScores
#     def initialize(scores)
#       @scores = scores
#     end
  
#     def scores
#       @scores
#     end

#     def latest
#         @scores.last
#     end

#     def personal_best
#         @scores.max
#     end

#     def personal_top_three
#         # refactored
#         # @scores.sort.slice(-3..).reverse
#         @scores.uniq.max(3)
#     end

#     def latest_is_personal_best?
#         @scores.last == @scores.max
#     end
# end


class HighScores
    def initialize(scores)
      @scores = scores
    end
  
    def scores
      @scores
    end

    def latest
        @scores.last
    end

    def personal_best
        @scores.max
    end

    def personal_top_three
        # refactored
        # @scores.sort.slice(-3..).reverse
        @scores.uniq.max(3)
    end

    def latest_is_personal_best?
        @scores.last == @scores.max
    end

  end
  
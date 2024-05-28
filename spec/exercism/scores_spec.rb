require 'rspec'
require_relative '../../exercism/scores'

RSpec.describe HighScores do
    describe '.new' do
      it 'returns scores' do
        expect(HighScores.new([10,20,30,40]).scores).to eq([10,20,30,40])
      end

      it 'returns latest score' do
        scores= [100,0,90,30]
        expect(HighScores.new(scores).latest).to eq(30)
      end

      it 'tests personal best' do
        scores = [100,0,90,30,100]
        expect(HighScores.new(scores).personal_best).to eq(100)
      end

      it 'returns top 3 scores from list of scores' do
        scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]
        expect(HighScores.new(scores).personal_top_three).to eq([100, 90, 70])
      end

      it 'returns top 3 scores from highest to lowest' do
        scores = [20, 10, 30]
        expect(HighScores.new(scores).personal_top_three).to eq([30, 20, 10])
      end

      it 'returns top 3 when there is a tie' do
        scores = [40,20,40,30]
        expect(HighScores.new(scores).personal_top_three).to eq([40,30,20])
      end

      it 'returns top 2 when only 2 args are given' do
        scores = [10,20]
        expect(HighScores.new(scores).personal_top_three).to eq([20,10])
      end

      it 'returns top 1 when only 1 arg is given' do
        scores = [10]
        expect(HighScores.new(scores).personal_top_three).to eq([10])
      end
    
      it 'does not change the scores' do
        scores = [20, 70, 15, 25, 30]
        high_scores = HighScores.new(scores)
        high_scores.personal_best
        expect(high_scores.scores).to eq([20, 70, 15, 25, 30])
      end

      it 'returns the latest score after personal best' do
        scores = [20, 70, 15, 25, 30]
        high_scores = HighScores.new(scores)
        high_scores.personal_best
        expect(high_scores.latest).to eq(30)
      end
    end
  
    describe '#scores' do
      it 'returns the scores after personal best' do
        scores = [20, 70, 15, 25, 30]
        high_scores = HighScores.new(scores)
        high_scores.personal_best
        expect(high_scores.scores).to eq([20, 70, 15, 25, 30])
      end
    end
  
    describe '#latest_is_personal_best?' do
      it 'returns false if the latest score is not the personal best' do
        scores = [100, 40, 10, 70]
        high_scores = HighScores.new(scores)
        expect(high_scores.latest_is_personal_best?).to be false
      end
  
      it 'returns true if the latest score is the personal best' do
        scores = [70, 40, 10, 100]
        high_scores = HighScores.new(scores)
        expect(high_scores.latest_is_personal_best?).to be true
      end

    end
end

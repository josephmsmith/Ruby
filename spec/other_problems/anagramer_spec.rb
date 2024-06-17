require 'rspec'
require_relative "../../other_problems/anagramer"

RSpec.describe Anagram do
    describe '.checker' do
        it 'returns true when an anagram god and dog is given' do
            expect(Anagram.checker("god", "dog")).to eq(true)
        end
        it 'returns true when a capitalized anagram is given' do
            expect(Anagram.checker("God", "Dog")).to eq(true)
        end
        it 'returns false when a non anagram is given' do
            expect(Anagram.checker("computer", "Dog")).to eq(false)
        end
        it 'returns true when a sentence anagram is given' do
            expect(Anagram.checker("cat dog", "god tac")).to eq(true)
        end
        it 'returns false when a sentence non anagram is given' do
            expect(Anagram.checker("cat dog", "house tac")).to eq(false)
        end
    end
end


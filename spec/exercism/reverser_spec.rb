require 'rspec' 
require_relative '../../exercism/reverser'

RSpec.describe Reverser do
  describe '.reverse' do
    it 'returns the reversed word' do
      expect(Reverser.reverse("word")).to eq("drow")
    end

    it 'returns an empty string when an empty string is entered' do
      expect(Reverser.reverse("")).to eq("")
    end

    it 'reverses a capitalized word' do
      expect(Reverser.reverse("Word")).to eq("droW")
    end

    it 'reverses a sentence with punctuation' do
      expect(Reverser.reverse("Hello, world!")).to eq("!dlrow ,olleH")
    end

    it 'reverses a palindrome' do
      expect(Reverser.reverse("madam")).to eq("madam")
    end

    it 'reverses an even sized word' do
      expect(Reverser.reverse("even")).to eq("neve")
    end
  end
end

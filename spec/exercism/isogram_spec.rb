require 'rspec'
require_relative '../../exercism/isogram'

RSpec.describe Isogram do
    describe '.isogram?' do
      it 'returns true for an empty string' do
        input = ""
        expect(Isogram.isogram?(input)).to be true
      end
  
      it 'returns true for an isogram with only lower case characters' do
        input = "isogram"
        expect(Isogram.isogram?(input)).to be true
      end
  
      it 'returns false for a word with one duplicated character' do
        input = "eleven"
        expect(Isogram.isogram?(input)).to be false
      end
  
      it 'returns false for a word with one duplicated character from the end of the alphabet' do
        input = "zzyzx"
        expect(Isogram.isogram?(input)).to be false
      end
  
      it 'returns true for the longest reported English isogram' do
        input = "subdermatoglyphic"
        expect(Isogram.isogram?(input)).to be true
      end
  
      it 'returns false for a word with duplicated character in mixed case' do
        input = "Alphabet"
        expect(Isogram.isogram?(input)).to be false
      end
  
      it 'returns false for a word with duplicated character in mixed case lowercase first' do
        input = "alphAbet"
        expect(Isogram.isogram?(input)).to be false
      end
  
      it 'returns true for a hypothetical isogrammic word with hyphen' do
        input = "thumbscrew-japingly"
        expect(Isogram.isogram?(input)).to be true
      end
  
      it 'returns false for a hypothetical word with duplicated character following hyphen' do
        input = "thumbscrew-jappingly"
        expect(Isogram.isogram?(input)).to be false
      end
  
      it 'returns true for an isogram with duplicated hyphen' do
        input = "six-year-old"
        expect(Isogram.isogram?(input)).to be true
      end
  
      it 'returns true for a made up name that is an isogram' do
        input = "Emily Jung Schwartzkopf"
        expect(Isogram.isogram?(input)).to be true
      end
  
      it 'returns false for a word with duplicated character in the middle' do
        input = "accentor"
        expect(Isogram.isogram?(input)).to be false
      end
  
      it 'returns false for a word with same first and last characters' do
        input = "angola"
        expect(Isogram.isogram?(input)).to be false
      end
  
      it 'returns false for a word with duplicated character and with two hyphens' do
        input = "up-to-date"
        expect(Isogram.isogram?(input)).to be false
      end
    end
  end
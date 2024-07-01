require 'rspec'
require 'valid_parentheses'

RSpec.describe '#is_valid' do
  context 'when valid string is input' do
    it 'returns true' do
      expect(is_valid('[]')).to eq true
      expect(is_valid('[]{}()((()))')).to eq true
      expect(is_valid('')).to eq true
    end
  end
  
  context 'when invalid string is input' do
    it 'returns false' do
      expect(is_valid('[[]')).to eq false
      expect(is_valid('))')).to eq false
    end
  end
end
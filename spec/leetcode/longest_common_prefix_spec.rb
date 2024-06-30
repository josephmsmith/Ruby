require 'rspec'
require 'longest_common_prefix'

RSpec.describe '#longest_common_prefix' do
  context 'when given no array' do
    it 'returns a blank string' do
      expect(longest_common_prefix([])).to eq('')
    end
  end

  context 'when a given a string with common prefixes' do
    it 'returns the common prefix' do
      expect(longest_common_prefix(%w[flower flow flight])).to eq('fl')
    end
  end

  context 'when given an array of strings with no common prefix' do
    it 'returns a blank string' do
      expect(longest_common_prefix(%w[dog racecar car])).to eq('')
    end
  end

  context 'when given an array with only one string' do
    it 'returns that string as the prefix' do
      expect(longest_common_prefix(['single'])).to eq('single')
    end
  end

  context 'when given an array of identical strings' do
    it 'returns that string as the prefix' do
      expect(longest_common_prefix(%w[test test test])).to eq('test')
    end
  end

  context 'when given an array of mixed case strings' do
    it 'returns the common prefix considering case sensitivity' do
      expect(longest_common_prefix(%w[Capital capes capture])).to eq('Cap')
    end
  end

  context 'when given an array with one empty string' do
    it 'returns a blank string' do
      expect(longest_common_prefix(['', 'nonempty'])).to eq('')
    end
  end

  context 'when given an array of empty strings' do
    it 'returns a blank string' do
      expect(longest_common_prefix(['', '', ''])).to eq('')
    end
  end
end
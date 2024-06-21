require 'rspec'
require_relative '../../other_problems/bracket_buster'

RSpec.describe Braces do
  describe '.valid_order?' do
    it 'returns true when simple brackets are input []()' do
      expect(Braces.valid_order('[]()')).to eq(true)
    end

    it 'returns false when simple brackets are input wrong {}[]]' do
      expect(Braces.valid_order('{}[][')).to eq(false)
    end

    it 'returns true for nested braces {[]}' do
      expect(Braces.valid_order('{[]}')).to eq(true)
    end

    it 'returns false for mismatched braces {[}]' do
      expect(Braces.valid_order('{[}]')).to eq(false)
    end

    it 'returns false for an empty string' do
      expect(Braces.valid_order('')).to eq(false)
    end

    it 'returns false for non-brace characters' do
      expect(Braces.valid_order('abc')).to eq(false)
    end

    it 'returns false for input containing invalid characters along with braces' do
      expect(Braces.valid_order('({a})')).to eq(false)
    end

    it 'returns true for complex valid braces {([])}' do
      expect(Braces.valid_order('{([])}')).to eq(true)
    end

    it 'returns false for invalid complex braces {([)]}' do
      expect(Braces.valid_order('{([)]}')).to eq(false)
    end

    it 'returns true for multiple sets of valid braces ()[]{}' do
      expect(Braces.valid_order('()[]{}')).to eq(true)
    end

    it 'returns false for string with an odd number of braces ({[]})[' do
      expect(Braces.valid_order('({[]})[')).to eq(false)
    end

    it 'returns true for valid nested braces ( { [ ] } )' do
      expect(Braces.valid_order('({[]})')).to eq(true)
    end

    it 'returns false for improper nesting ([{]})' do
      expect(Braces.valid_order('([{]})')).to eq(false)
    end

    it 'returns false for braces closed in the wrong order (]})' do
      expect(Braces.valid_order(']})')).to eq(false)
    end
  end
end

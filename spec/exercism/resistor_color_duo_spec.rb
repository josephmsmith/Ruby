require 'rspec'
require_relative '../../exercism/resistor_color_duo'

RSpec.describe ResistorColorDuo do
  describe '.value' do
    it 'returns 10 for brown and black' do
      expect(ResistorColorDuo.value(%w[brown black])).to eq(10)
    end

    it 'returns 68 for blue and grey' do
      expect(ResistorColorDuo.value(%w[blue grey])).to eq(68)
    end

    it 'returns 47 for yellow and violet' do
      expect(ResistorColorDuo.value(%w[yellow violet])).to eq(47)
    end

    it 'returns 92 for white and red' do
      expect(ResistorColorDuo.value(%w[white red])).to eq(92)
    end

    it 'returns 33 for orange and orange' do
      expect(ResistorColorDuo.value(%w[orange orange])).to eq(33)
    end

    it 'ignores additional colors and returns 51 for green and brown' do
      expect(ResistorColorDuo.value(%w[green brown orange])).to eq(51)
    end

    it 'returns 1 for black and brown' do
      expect(ResistorColorDuo.value(%w[black brown])).to eq(1)
    end

    it 'raises an error for invalid color' do
      expect { ResistorColorDuo.value(['pink', 'brown']) }.to raise_error(ArgumentError, 'Need a real color, not ["pink", "brown"]')
    end
  end
end

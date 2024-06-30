require 'rspec'
require 'roman_to_int'

RSpec.describe '#roman_to_int' do
  context 'when valid numerals are input' do
    it 'returns a valid number' do
      expect(roman_to_int('VI')).to eq 6
      expect(roman_to_int('IV')).to eq 4
      expect(roman_to_int('XII')).to eq 12
      expect(roman_to_int('XXI')).to eq 21
    end
  end

  context 'when a non-Roman numeral is input' do
    it 'raises an InvalidRomanNumeralError' do
      expect { roman_to_int('4') }.to raise_error(InvalidRomanNumeralError, 'Enter Valid String')
      expect { roman_to_int('abc') }.to raise_error(InvalidRomanNumeralError, 'Enter Valid String')
      expect { roman_to_int('') }.to raise_error(InvalidRomanNumeralError, 'Enter Valid String')
    end
  end
end

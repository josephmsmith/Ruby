require 'rspec'
require_relative '../../other_problems/dna_sequencer'

RSpec.describe DNA do
  describe '.sequencer' do
    it 'returns the complimentary string in uppercase for a typical sequence' do
      expect(DNA.sequencer('TACG')).to eq('ATGC')
    end

    it 'returns the complimentary string in uppercase for a lowercase sequence' do
      expect(DNA.sequencer('tacg')).to eq('ATGC')
    end

    it 'returns the complimentary string in uppercase for a mixed case sequence' do
      expect(DNA.sequencer('TaCg')).to eq('ATGC')
    end

    it 'returns the complimentary string in uppercase for a longer sequence' do
      expect(DNA.sequencer('ATTGCC')).to eq('TAACGG')
    end

    it 'returns an empty string for an empty input' do
      expect(DNA.sequencer('')).to eq('')
    end

    it 'handles invalid characters by ignoring them or returning nil' do
      expect(DNA.sequencer('ATBX')).to eq('TA')
    end

    it 'handles sequences with repeated characters correctly' do
      expect(DNA.sequencer('AAAA')).to eq('TTTT')
    end
  end
end

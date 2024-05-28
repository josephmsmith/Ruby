require 'rspec'
require_relative '../../exercism/acronym'

RSpec.describe Acronym do
    describe '.abbreviate' do
      it 'returns PNG for Portable Network Graphics' do
        expect(Acronym.abbreviate('Portable Network Graphics')).to eq('PNG')
      end
  
      it 'returns ROR for Ruby on Rails' do
        expect(Acronym.abbreviate('Ruby on Rails')).to eq('ROR')
      end
  
      it 'returns FIFO for First In, First Out' do
        expect(Acronym.abbreviate('First In, First Out')).to eq('FIFO')
      end
  
      it 'returns GIMP for GNU Image Manipulation Program' do
        expect(Acronym.abbreviate('GNU Image Manipulation Program')).to eq('GIMP')
      end
  
      it 'returns CMOS for Complementary metal-oxide semiconductor' do
        expect(Acronym.abbreviate('Complementary metal-oxide semiconductor')).to eq('CMOS')
      end
  
      it 'returns ROTFLSHTMDCOALM for Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me' do
        expect(Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')).to eq('ROTFLSHTMDCOALM')
      end
  
      it 'returns SIMUFTA for Something - I made up from thin air' do
        expect(Acronym.abbreviate('Something - I made up from thin air')).to eq('SIMUFTA')
      end
    end
  end
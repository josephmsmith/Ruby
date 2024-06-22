require 'rspec'
require_relative '../../exercism/dnd_character'
require_relative '../../helpers/helper'

RSpec.describe DndCharacter do
  describe '.modifier' do
    it 'returns the correct modifier for various scores' do
      expect(DndCharacter.modifier(4)).to eq(-3)
      expect(DndCharacter.modifier(5)).to eq(-3)
      expect(DndCharacter.modifier(6)).to eq(-2)
      expect(DndCharacter.modifier(7)).to eq(-2)
      expect(DndCharacter.modifier(8)).to eq(-1)
      expect(DndCharacter.modifier(9)).to eq(-1)
      expect(DndCharacter.modifier(10)).to eq(0)
      expect(DndCharacter.modifier(11)).to eq(0)
      expect(DndCharacter.modifier(12)).to eq(1)
      expect(DndCharacter.modifier(13)).to eq(1)
      expect(DndCharacter.modifier(14)).to eq(2)
      expect(DndCharacter.modifier(15)).to eq(2)
      expect(DndCharacter.modifier(16)).to eq(3)
      expect(DndCharacter.modifier(17)).to eq(3)
      expect(DndCharacter.modifier(18)).to eq(4)
    end
  end

  describe '#initialize' do
    it 'creates a character with valid stats and hitpoints' do
      100.times do
        character = DndCharacter.new
        allowed_range = (3..18)
        expected_hitpoints = Helper::BASE_HITPOINTS + DndCharacter.modifier(character.constitution)
        informative_message = "The character's %s must be within #{allowed_range}"

        character.attributes.each do |attribute|
          expect(allowed_range).to include(character.send(attribute)),
                                   informative_message % attribute
        end

        informative_message = "The character's hitpoints must be #{expected_hitpoints}"
        expect(character.hitpoints).to eq(expected_hitpoints),
                                       informative_message
      end
    end
  end
end

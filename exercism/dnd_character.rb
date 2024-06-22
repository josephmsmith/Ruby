require_relative '../helpers/helper'

class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints
  
  def self.modifier(score)
    (score - 10) / 2
  end

  def initialize
    @strength = roll_ability
    @dexterity = roll_ability
    @constitution = roll_ability
    @intelligence = roll_ability
    @wisdom = roll_ability
    @charisma = roll_ability
    @hitpoints = Helper::BASE_HITPOINTS + DndCharacter.modifier(@constitution)
  end

  def attributes
    %i[strength dexterity constitution intelligence wisdom charisma]
  end

  private

  def roll_ability
    rolls = Array.new(4) { rand(1..6) }
    rolls.sort.reverse.take(3).sum
  end
end

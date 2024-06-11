#roll 4 6 sided dice, record sum of top 3 .do 6 times
#initial hitpoints = 10+
# constitution_mod = ((constituion - 10)/2)/.floor
class DndCharacter
    def self.modifier(score)
        ((constitution[score] - 10)/2).floor
    end

    def initialize
      abilities = {
        constitution: @diceroll
      }
    end

    def diceroll
    
    end
end

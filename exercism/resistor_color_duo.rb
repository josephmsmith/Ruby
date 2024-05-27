class ResistorColorDuo
    COLOR_VALUES = {
      'black' => 0,
      'brown' => 1,
      'red' => 2,
      'orange' => 3,
      'yellow' => 4,
      'green' => 5,
      'blue' => 6,
      'violet' => 7,
      'grey' => 8,
      'white' => 9
    }
  
    def self.value(colors)
      first_two_colors = colors[0, 2]
      first_value = COLOR_VALUES[first_two_colors[0].downcase]
      second_value = COLOR_VALUES[first_two_colors[1].downcase]
      (first_value * 10) + second_value
    end
  end
  
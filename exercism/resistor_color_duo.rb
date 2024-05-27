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
      # return the numbers associated with colors array and only include first 2 numbers as two digit
      # input is space seperated array ex: red blue white
      first_two_colors = colors[0..1] # gives our keys
      first_color_value = COLOR_VALUES[first_two_colors[0]]
      second_color_value = COLOR_VALUES[first_two_colors[1]]
      (first_color_value*10) + second_color_value
    end
  end
  
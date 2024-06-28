# frozen_string_literal: true

def roman_to_int(s)
  # given roman num , convert to integer
  # iterate through each char and add it to the next
  # unless it meets criteria, then we will substract
  rn_hash = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }
  num = 0
  prev_value = 0
  # add them all up first
  s.reverse.each_char do |char|
    value = rn_hash[char]
    if value >= prev_value
      num += value
    elsif value < prev_value
      num -= value
    end
    prev_value = value
  end
  num
end

# frozen_string_literal: true

class InvalidRomanNumeralError < StandardError; end

def roman_to_int(str)
  # given roman num , convert to integer
  # iterate through each char and add it to the next
  # unless it meets criteria, then we will substract
  raise InvalidRomanNumeralError, 'Enter Valid String' unless str.match?(/\A[IVXLCDM]+\z/i)

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
  str.reverse.each_char do |char|
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

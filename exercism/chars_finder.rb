# frozen_string_literal: true

# require 'set'

# CharsFinder is a utility class to check if an array of characters
# contains all the characters necessary to form a given string.
class CharsFinder
  def self.arr_has_chars_necessary?(string, array)
    chars_set = Set.new(array)
    string_arr = string.split('')
    string_arr.all? { |char| chars_set.include?(char) }
  end
end

# frozen_string_literal: true

class Braces
  def self.valid_order(string)
    # init an empty stack and matching brace hash
    stack = []
    matching_brace = { ')' => '(', ']' => '[', '}' => '{' }
    # iterate through each char in string
    string.each_char do |char|
      # if char is an opening brace, add it to the stack
      if matching_brace.values.include?(char)
        stack.push(char)
      # if char is a closing brace check if top of stack is not matching opening brace
      # if either condition is true, return false
      elsif matching_brace.keys.include?(char)
        return false if stack.empty? || stack.pop != matching_brace[char]
      end
    end
    stack.empty?
  end
end

# frozen_string_literal: true
require_relative '../helpers/helper'

def foo_bar(n)
  # Validation check
  if Helper.positive_integer?(n)
    # Print 1 to n
    (1..n).each { |char| print "#{char}," }
    puts

    # Print Foo/Bar statement
    if n % 3 == 0 && n % 5 == 0
      puts "FooBar"
    elsif n % 3 == 0
      puts "Foo"
    elsif n % 5 == 0
      puts "Bar"
    else
      puts n
    end
  else
    puts "Invalid input. Input a positive integer please."
  end
end

## OPTIMAL SOLUTION ##
# def foo_bar(n)
#     # Validation check
#     unless n.is_a?(Integer) && n > 0
#       return "Invalid input. Input a positive integer please."
#     end
  
#     # Print 1 to n
#     puts (1..n).to_a.join(',')
  
#     # Print Foo/Bar statement
#     result = if n % 3 == 0 && n % 5 == 0
#                "FooBar"
#              elsif n % 3 == 0
#                "Foo"
#              elsif n % 5 == 0
#                "Bar"
#              else
#                n.to_s
#              end
  
#     puts result
#   end
  

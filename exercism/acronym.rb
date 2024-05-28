=begin

Convert a phrase to its acronym.
Techies love their TLA (Three Letter Acronyms)!
Help generate some jargon by writing a program that converts a long name like Portable Network Graphics to its acronym (PNG).
Punctuation is handled as follows: hyphens are word separators (like whitespace); all other punctuation can be removed from the input.

=end

# hyphens are delimiters and spaces
# return all uppercase

# note, we can use .split & .flatten or use regex expression
class Acronym
    def self.abbreviate(phrase)
        # to array 
        phrase_array = phrase.split(/[- ]/)
        # pull out first letter, convert to string, capitalize
        phrase_array.map{|phrase|phrase[0]}.join.upcase
    end
end
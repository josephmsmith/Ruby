=begin
Isogram is word or phrase without repeating letter
spaces and hyphers are allowed
=end

#edge cases
# all  lowercase
# empty strings
# multiple spaces or hyphens
class Isogram
    def self.isogram?(string)
        # create empty hash
        char_count = Hash.new(0)
        # enumerate through each char, add 1 to value in hash
        string.downcase.each_char do |char|
            char_count[char] += 1
        end
        # count all values not space or hyphen for values greater than 1
        # if key != " " or "-" then
        char_count.none?{|key,value| value > 1 && key != " " && key != "-" }
    end
end


# more efficient
# class Isogram
#     def self.isogram?(phrase)
#        letters = phrase.downcase.scan(/\w/)
#        letters == letters.uniq
#     end
#   end
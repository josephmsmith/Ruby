class Anagram
    def self.checker(s1,s2)
        # check for size parameters
        return false if s1.size != s2.size
        # init new hash
        chars_count = Hash.new(0)
        # assign s1 counts
        s1.downcase.each_char{|char|chars_count[char] += 1}
        # substract from the hash
        s2.downcase.each_char{|char|chars_count[char] -= 1}
        # check the count
        chars_count.values.all?(&:zero?)
    end
end

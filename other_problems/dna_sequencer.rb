class DNA
  def self.sequencer(string) 
    # create a compliment hash map
    compliments = {
      'A' => 'T',
      'T' => 'A',
      'C' => 'G',
      'G' => 'C'
    }
    # create a sequence and uppercase
    sequence = string.upcase
    # enumerate through chars and map complements
    sequence.chars.map { |char| compliments[char] }.compact.join
    # return the compliment string
  end
end

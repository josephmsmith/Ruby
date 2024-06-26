# Main idea: Start with the variable "prefix" and look for it in each string.
# If it doesn't exist, remove a letter from the end and look again.
def longest_common_prefix(strs)
  # Return an empty string if the input array is empty
  return '' if strs.empty?

  # Use the first string as the initial prefix
  prefix = strs[0]

  # Iterate through each string in the array
  strs.each do |str|
    # While the current string doesn't start with the prefix
    until str.downcase.start_with?(prefix.downcase)
      # Remove the last character from the prefix
      prefix = prefix[0...-1]
      # Return an empty string if there's no common prefix
      return '' if prefix.empty?
    end
  end

  # Return the prefix after all adjustments
  prefix
end

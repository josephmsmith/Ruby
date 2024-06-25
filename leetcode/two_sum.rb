# Given an array of integers nums and an integer target,
# return indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# return the indicies of two nums that and up to target
def two_sums(nums, target)
    # two approaches - brute force, more optimized
    # {6=>0, 5=>1,10=>2 }
    num_map = {}
    # iterate through each with index and calculate complement
    nums.each_with_index do |num, index|
        complement = target - num
        # if complement in num map return the indicies of both indexes
        if num_map.key?(complement)
            return [num_map[complement],index]
        end
        # add it to the num_map
        num_map[num] = index
    end
    return []
end
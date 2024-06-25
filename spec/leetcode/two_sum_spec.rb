require 'rspec'
require_relative '../../leetcode/two_sum'

RSpec.describe 'two_sum' do
    it 'returns the indices of the two numbers that add up to the target' do
        expect(two_sums([2, 7, 11, 15], 9)).to eq([0, 1])
        expect(two_sums([3, 2, 4], 6)).to eq([1, 2])
        expect(two_sums([3, 3], 6)).to eq([0, 1])
    end

    it 'returns an empty array if no such numbers exist' do
        expect(two_sums([1, 2, 3], 7)).to eq([])
    end

    it 'handles negative numbers and zeros correctly' do
        expect(two_sums([-1, -2, -3, -4, -5], -8)).to eq([2, 4])
        expect(two_sums([0, 4, 3, 0], 0)).to eq([0, 3])
    end
end

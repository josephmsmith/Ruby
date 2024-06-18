# foo_bar_spec.rb
# frozen_string_literal: true
require_relative '../../other_problems/foo_bar'
require_relative '../../helpers/helper'

RSpec.describe '#foo_bar' do
  it 'prints numbers from 1 to n followed by FooBar for multiples of 3 and 5' do
    expect { foo_bar(15) }.to output("1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,\nFooBar\n").to_stdout
  end

  it 'prints numbers from 1 to n followed by Foo for multiples of 3' do
    expect { foo_bar(9) }.to output("1,2,3,4,5,6,7,8,9,\nFoo\n").to_stdout
  end

  it 'prints numbers from 1 to n followed by Bar for multiples of 5' do
    expect { foo_bar(10) }.to output("1,2,3,4,5,6,7,8,9,10,\nBar\n").to_stdout
  end

  it 'prints numbers from 1 to n followed by n if n is not multiple of 3 or 5' do
    expect { foo_bar(7) }.to output("1,2,3,4,5,6,7,\n7\n").to_stdout
  end

  it 'returns an error message for invalid input' do
    expect { foo_bar(-1) }.to output("Invalid input. Input a positive integer please.\n").to_stdout
    expect { foo_bar(0) }.to output("Invalid input. Input a positive integer please.\n").to_stdout
    expect { foo_bar('a') }.to output("Invalid input. Input a positive integer please.\n").to_stdout
  end
end

RSpec.describe Helper do
  describe '.positive_integer?' do
    it 'returns true for positive integers' do
      expect(Helper.positive_integer?(1)).to be true
      expect(Helper.positive_integer?(10)).to be true
    end

    it 'returns false for non-positive integers' do
      expect(Helper.positive_integer?(-1)).to be false
      expect(Helper.positive_integer?(0)).to be false
    end

    it 'returns false for non-integer values' do
      expect(Helper.positive_integer?('a')).to be false
      expect(Helper.positive_integer?(3.14)).to be false
    end
  end
end

# foo_bar_spec.rb

require_relative '../../other_problems/foo_bar'

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
    expect(foo_bar(-1)).to eq("Invalid input. Input a positive integer please.")
    expect(foo_bar(0)).to eq("Invalid input. Input a positive integer please.")
    expect(foo_bar('a')).to eq("Invalid input. Input a positive integer please.")
  end
end

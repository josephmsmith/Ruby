require 'rspec'
require_relative '../../exercism/isogram'

RSpec.describe Isogram do
    describe '#isogram?' do
        it 'should return true or false' do
            expect(Isogram.isogram?("string")).to eq(true)
        end
    end
end

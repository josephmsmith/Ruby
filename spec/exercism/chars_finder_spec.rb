require 'rspec'
require_relative '../../exercism/chars_finder'

RSpec.describe CharsFinder do
  describe '.arr_has_chars_necessary?(string,array)' do
    it 'should return true when given array and %w[a r r a y]' do
      expect(CharsFinder.arr_has_chars_necessary?('array', %w[a r r a y])).to eq(true)
    end
    it 'returns false when given string and w%[a r r a y]' do
      expect(CharsFinder.arr_has_chars_necessary?('string', %w[a r r a y])).to eq(false)
    end
  end
end

# bundle exec rspec spec/exercism/chars_finder_spec.rb


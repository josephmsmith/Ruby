require 'rspec'
require_relative '../../exercism/series'

RSpec.describe Series do
  # initialize
  describe '.new' do
    it 'creates a new Series object with the given string' do
      series = Series.new("1")
      expect(series.instance_variable_get(:@series)).to eq("1")
    end
  end
end

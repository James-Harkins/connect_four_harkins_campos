require 'pry'
require 'rspec'
require './lib/space'

RSpec.describe Space do
  describe '#initialize' do
    it 'is empty by default' do
      space = Space.new

      expect(space.filled).to eq(false)
    end
  end
end

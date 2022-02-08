require 'pry'
require 'rspec'
require './lib/board'

RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end
  describe '#initialize' do
    it "exists" do

      expect(@board).to be_an_instance_of(Board)
    end

    it "starts out with a header A..G and 42 empty spaces" do

      expect(@board.spaces[0]).to eq(['A', 'B', 'C', 'D', 'E', 'F', 'G'])
      expect(@board.spaces[1]).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(@board.spaces[2]).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(@board.spaces[3]).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(@board.spaces[4]).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(@board.spaces[5]).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(@board.spaces[6]).to eq(['.', '.', '.', '.', '.', '.', '.'])
    end
  end
end

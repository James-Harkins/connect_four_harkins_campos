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

  describe '#reset_board' do
    it 'will reset the board to show all empty spaces' do

      @board.spaces[6][0] = "X"
      @board.spaces[5][0] = "X"
      @board.spaces[4][0] = "X"
      @board.spaces[3][0] = "X"

      expect(@board.spaces).to eq([
      ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['X', '.', '.', '.', '.', '.', '.'],
      ['X', '.', '.', '.', '.', '.', '.'],
      ['X', '.', '.', '.', '.', '.', '.'],
      ['X', '.', '.', '.', '.', '.', '.']
      ])

      @board.reset_board

      expect(@board.spaces).to eq([
      ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.']
    ])
    end
  end

  describe '#draw?' do
    it 'can detect a draw' do

      expect(@board.draw?).to eq(false)

      @board.spaces.each do |row|
        row[0] = "X"
        row[1] = "X"
        row[2] = "X"
        row[3] = "X"
        row[4] = "X"
        row[5] = "X"
        row[6] = "X"
      end

      expect(@board.draw?).to eq(true)
    end
  end
end

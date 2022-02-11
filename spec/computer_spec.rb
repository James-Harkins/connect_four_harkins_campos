require './lib/board'
require './lib/computer'
require 'pry'


RSpec.describe Computer do
  before(:each) do
    @computer = Computer.new
  end

  describe '#initialize' do
    it 'has not won' do

    expect(@computer.has_won).to eq(false)
    end
  end

  describe '#check_for_horizontal_victory' do
    it 'can detect horizontal vicotry' do
      board = Board.new

      board.spaces[1][0] = "O"
      board.spaces[1][1] = "O"
      board.spaces[1][2] = "O"
      board.spaces[1][3] = "O"

      expect(@computer.check_for_horizontal_victory(board)).to eq(true)
      expect(@computer.has_won).to eq(true)
    end

    it 'can detect any horizontal victory' do
      board = Board.new

      board.spaces[4][2] = "O"
      board.spaces[4][3] = "O"
      board.spaces[4][4] = "O"
      board.spaces[4][5] = "O"

      expect(@computer.check_for_horizontal_victory(board)).to eq(true)
      expect(@computer.has_won).to eq(true)
    end
  end




end

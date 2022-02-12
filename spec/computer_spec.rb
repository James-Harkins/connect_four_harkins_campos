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

      @computer.check_for_horizontal_victory(board)
      expect(@computer.has_won).to eq(true)
    end

    it 'can detect any horizontal victory' do
      board = Board.new

      board.spaces[4][2] = "O"
      board.spaces[4][3] = "O"
      board.spaces[4][4] = "O"
      board.spaces[4][5] = "O"

      @computer.check_for_horizontal_victory(board)
      expect(@computer.has_won).to eq(true)
    end
  end

  describe '#check_for_vertical_victory' do
    it 'can detect vertical victory' do
      board = Board.new
      board.spaces[1][0] = "O"
      board.spaces[2][0] = "O"
      board.spaces[3][0] = "O"
      board.spaces[4][0] = "O"

      @computer.check_for_vertical_victory(board)
      expect(@computer.has_won).to eq(true)
    end

    it 'can detect any vertical victory' do
      board = Board.new

      board.spaces[3][2] = "O"
      board.spaces[4][2] = "O"
      board.spaces[5][2] = "O"
      board.spaces[6][2] = "O"

      @computer.check_for_vertical_victory(board)
      expect(@computer.has_won).to eq(true)
    end
  end

  describe '#reset_computer' do
    it 'can reset computer has_won status' do
      board = Board.new

      board.spaces[3][2] = "O"
      board.spaces[4][2] = "O"
      board.spaces[5][2] = "O"
      board.spaces[6][2] = "O"

      @computer.check_for_vertical_victory(board)
      expect(@computer.has_won).to eq(true)
      @computer.reset_computer
      expect(@computer.has_won).to eq(false)
    end
  end
end

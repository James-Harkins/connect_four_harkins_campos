require './lib/board'
require './lib/player'
require 'pry'


RSpec.describe Player do
  before(:each) do
    @player = Player.new
  end

  describe '#initialize' do
    it 'has not won' do

    expect(@player.has_won).to eq(false)
    end
  end

  describe '#check_for_horizontal_victory' do
    it 'can detect horizontal vicotry' do
      board = Board.new

      board.spaces[1][0] = "X"
      board.spaces[1][1] = "X"
      board.spaces[1][2] = "X"
      board.spaces[1][3] = "X"

      @player.check_for_horizontal_victory(board, "X")
      expect(@player.has_won).to eq(true)
    end

    it 'can detect any horizontal victory' do
      board = Board.new

      board.spaces[4][2] = "X"
      board.spaces[4][3] = "X"
      board.spaces[4][4] = "X"
      board.spaces[4][5] = "X"

      @player.check_for_horizontal_victory(board, "X")
      expect(@player.has_won).to eq(true)
    end
  end

  describe '#check_for_vertical_victory' do
    it 'can detect vertical victory' do
      board = Board.new
      board.spaces[1][0] = "X"
      board.spaces[2][0] = "X"
      board.spaces[3][0] = "X"
      board.spaces[4][0] = "X"

      @player.check_for_vertical_victory(board, "X")
      expect(@player.has_won).to eq(true)
    end

    it 'can detect any vertical victory' do
      board = Board.new

      board.spaces[3][2] = "X"
      board.spaces[4][2] = "X"
      board.spaces[5][2] = "X"
      board.spaces[6][2] = "X"

      @player.check_for_vertical_victory(board, "X")
      expect(@player.has_won).to eq(true)
    end
  end

  describe '#check_for_diagonal_victory' do
    it ' can detect northeast diagonal victory' do
      board = Board.new

      board.spaces[4][0] = "X"
      board.spaces[3][1] = "X"
      board.spaces[2][2] = "X"
      board.spaces[1][3] = "X"

      @player.check_for_diagonal_victory(board, "X")
      expect(@player.has_won).to eq(true)
    end

    it ' can detect any northeast diagonal victory' do
      board = Board.new

      board.spaces[5][2] = "X"
      board.spaces[4][3] = "X"
      board.spaces[3][4] = "X"
      board.spaces[2][5] = "X"

      @player.check_for_diagonal_victory(board, "X")
      expect(@player.has_won).to eq(true)
    end

    it ' can detect northwest diagonal victory' do
      board = Board.new

      board.spaces[6][3] = "X"
      board.spaces[5][2] = "X"
      board.spaces[4][1] = "X"
      board.spaces[3][0] = "X"

      @player.check_for_diagonal_victory(board, "X")
      expect(@player.has_won).to eq(true)
    end

    it ' can detect any northwest diagonal victory' do
      board = Board.new

      board.spaces[4][4] = "X"
      board.spaces[3][3] = "X"
      board.spaces[2][2] = "X"
      board.spaces[1][1] = "X"

      @player.check_for_diagonal_victory(board, "X")
      expect(@player.has_won).to eq(true)
    end
  end

  describe '#reset_player' do
    it 'can reset players has_won status' do
      board = Board.new

      board.spaces[3][2] = "X"
      board.spaces[4][2] = "X"
      board.spaces[5][2] = "X"
      board.spaces[6][2] = "X"

      @player.check_for_vertical_victory(board, "X")
      expect(@player.has_won).to eq(true)
      @player.reset_player
      expect(@player.has_won).to eq(false)
    end
  end
end

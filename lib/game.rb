require 'pry'
require './lib/board'

class Game

  def initialize(board, player, computer)
    @board = board
    @player = player
    @computer = computer
  end

  def start
    p "Welcome to CONNECT FOUR."
    p "Enter p to play. Enter q to quit."
    @board.print_board
    user_input = gets.chomp
    if user_input == "P" || user_input == "p"
      run_game
    end
  end

  def run_game
    until @player.has_won || @computer.has_won
      @board.print_board
      p "Please select a column for piece placement. Your Piece will be placed at the lowest empty slot on the column."
      @player.place_piece(@board)
      @computer.place_piece(@board)
    end
  end


end

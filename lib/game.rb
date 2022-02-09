require 'pry'
require './lib/board'

class Game

  def initialize(board)
    @board = board
  end

  def start
    p "Welcome to CONNECT FOUR."
    p "Enter p to play. Enter q to quit."
    @board.print_board
    user_input_1 = gets.chomp
    if user_input_1 == "P" || user_input_1 == "p"
      run_game
    end
  end

  def run_game
    p "Please select a column for piece placement. Your Piece will be placed at the lowest empty slot on the column."
    user_input_2 = gets.chomp

  end


end

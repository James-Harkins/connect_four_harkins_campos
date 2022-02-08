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
  end

end

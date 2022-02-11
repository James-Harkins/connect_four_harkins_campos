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
      @player.check_for_horizontal_victory(@board)
      @player.check_for_vertical_victory
      @player.check_for_diagonal_victory
      if @player.has_won
        run_game
      end
      @computer.place_piece(@board)
      @computer.check_for_horizontal_victory(@board)
      @computer.check_for_vertical_victory
      @computer.check_for_diagonal_victory
      if @computer.has_won
        run_game
      end
    end
    if @player.has_won
      p "You win!"
      @board.reset_board
      start
    elsif @computer.has_won
      p "Computer wins..."
      @board.reset_board
      start
    end
  end


end

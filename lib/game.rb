require 'pry'
require './lib/board'

class Game

  def initialize(board, player_one, player_two, computer)
    @board = board
    @player_one = player_one
    @player_two = player_two
    @computer = computer
  end

  def start
    p "Welcome to CONNECT FOUR."
    p "Enter p to play. Enter any other key to quit."

    @board.print_board
    user_input = gets.chomp
    if user_input == "P" || user_input == "p"
      p "Please enter 1 for single-player or 2 for two-player."
      num_players = gets.chomp.to_i
      if num_players == 1
        run_game_single_player
      elsif num_players == 2
        run_game_two_player
      end
    end
  end

  def run_game_single_player
    until @player_one.has_won || @computer.has_won || @board.draw?
      @board.print_board
      p "Please select a column for piece placement. Your Piece will be placed at the lowest empty slot on the column."
      @player_one.place_piece(@board)
      @player_one.check_for_horizontal_victory(@board)
      @player_one.check_for_vertical_victory(@board)
      @player_one.check_for_diagonal_victory(@board)

      if @player_one.has_won
        run_game_single_player
      end

      @computer.place_piece(@board)
      @computer.check_for_horizontal_victory(@board)
      @computer.check_for_vertical_victory(@board)
      @computer.check_for_diagonal_victory(@board)

      if @computer.has_won
        run_game_single_player
      end
    end

    if @player_one.has_won
      @board.print_board
      p "You win!"
      @board.reset_board
      @player_one.reset_player
      start
    elsif @computer.has_won
      @board.print_board
      p "Computer wins..."
      @board.reset_board
      @computer.reset_computer
      start
    elsif @board.draw?
      @board.print_board
      p "DRAW!"
      @board.reset_board
      start
    end
  end

  def run_game_two_player
    until @player_one.has_won || @player_two.has_won || @board.draw?
      @board.print_board
      p "Please select a column for piece placement. Your Piece will be placed at the lowest empty slot on the column."
      @player_one.place_piece(@board)
      @player_one.check_for_horizontal_victory(@board)
      @player_one.check_for_vertical_victory(@board)
      @player_one.check_for_diagonal_victory(@board)
      @board.print_board

      if @player_one.has_won
        run_game_two_player
      end

      @player_two.place_piece(@board)
      @player_two.check_for_horizontal_victory(@board)
      @player_two.check_for_vertical_victory(@board)
      @player_two.check_for_diagonal_victory(@board)
      @board.print_board

      if @player_two.has_won
        run_game_two_player
      end
    end

    if @player_one.has_won
      @board.print_board
      p "Player one wins!"
      @board.reset_board
      @player_one.reset_player
      start
    elsif @player_two.has_won
      @board.print_board
      p "Player two wins!"
      @board.reset_board
      @player_two.reset_player
      start
    elsif @board.draw?
      @board.print_board
      p "DRAW!"
      @board.reset_board
      start
    end
  end


end

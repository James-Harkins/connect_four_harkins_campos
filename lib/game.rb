require 'pry'
require './lib/board'

class Game

  def initialize(board, player_one, player_two, computer)
    @board = board
    @player_one = player_one
    @player_two = player_two
    @computer = computer
    @player_one_name = ""
    @player_two_name = ""
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
        p "Player one: Please enter your name."
        @player_one_name = gets.chomp
        p "Player two: Please enter your name."
        @player_two_name = gets.chomp
        run_game_two_player
      end
    else
      p "Goodbye!"
      @player_one.quit = true
    end
  end

  def run_game_single_player
    until @player_one.has_won || @computer.has_won || @board.draw? || @player_one.quit
      @board.print_board
      p "Please select a column for piece placement. Your Piece will be placed at the lowest empty slot on the column."
      @player_one.place_piece(@board, "X")
      @player_one.check_for_horizontal_victory(@board, "X")
      @player_one.check_for_vertical_victory(@board, "X")
      @player_one.check_for_diagonal_victory(@board, "X")

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
      print "You win!\n\n\n\n\n"
      @board.reset_board
      @player_one.reset_player
      start
    elsif @computer.has_won
      @board.print_board
      print "Computer wins...\n\n\n\n\n"
      @board.reset_board
      @computer.reset_computer
      start
    elsif @board.draw?
      @board.print_board
      print "DRAW!\n\n\n\n\n"
      @board.reset_board
      start
    end
  end

  def run_game_two_player
    until @player_one.has_won || @player_two.has_won || @board.draw? || @player_one.quit
      @board.print_board
      p "#{@player_one_name}: Please select a column for piece placement. Your Piece will be placed at the lowest empty slot on the column."
      @player_one.place_piece(@board, "X")
      @player_one.check_for_horizontal_victory(@board, "X")
      @player_one.check_for_vertical_victory(@board, "X")
      @player_one.check_for_diagonal_victory(@board, "X")
      @board.print_board

      if @player_one.has_won
        run_game_two_player
        break
      end

      p "#{@player_two_name}: Please select a column for piece placement. Your Piece will be placed at the lowest empty slot on the column."
      @player_two.place_piece(@board, "O")
      @player_two.check_for_horizontal_victory(@board, "O")
      @player_two.check_for_vertical_victory(@board, "O")
      @player_two.check_for_diagonal_victory(@board, "O")

      if @player_two.has_won
        run_game_two_player
      end
    end

    if @player_one.has_won
      @board.print_board
      print "#{@player_one_name} wins!\n\n\n\n\n"
      @board.reset_board
      @player_one.reset_player
      start
    elsif @player_two.has_won
      @board.print_board
      print "#{@player_two_name} wins!\n\n\n\n\n"
      @board.reset_board
      @player_two.reset_player
      start
    elsif @board.draw?
      @board.print_board
      print "DRAW!\n\n\n\n\n"
      @board.reset_board
      start
    end
  end

end

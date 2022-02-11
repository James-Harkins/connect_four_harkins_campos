require 'pry'
require './lib/board'

class Player

  attr_reader :has_won

  def initialize
    @has_won = false
  end

  def check_for_horizontal_victory
  end

  def check_for_vertical_victory
  end

  def check_for_diagonal_victory
  end

  def check_for_victory
    if check_for_horizontal_victory || check_for_vertical_victory || check_for_diagonal_victory
      @has_won = true
    end
  end

  def place_piece(board)
    user_input = gets.chomp

    valid_space = false
    row = -1
    column = board.spaces[0].index(user_input.upcase)

    if column.nil?
      p "Invalid input. Please select another column."
      place_piece(board)
    end

    until valid_space || row < -6
      if board.spaces[row][column] == "."
        board.spaces[row][column] = "X"
        valid_space = true
      end
      row -= 1
    end

    if !valid_space
      p "Invalid input. Please select another column."
      place_piece(board)
    end
  end
end

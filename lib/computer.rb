require 'pry'
require './lib/board'

class Computer

  attr_reader :has_won

  def initialize
    @has_won = false
  end

  def check_for_horizontal_victory(board)
    board.spaces.each do |row|
      row.each_cons(4) do |consecutive_spaces|
        if consecutive_spaces[0] == "O" &&
           consecutive_spaces[1] == "O" &&
           consecutive_spaces[2] == "O" &&
           consecutive_spaces[3] == "O"
          return true
        end
      end
    end
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
    selection = board.spaces[0].sample

    valid_space = false
    row = -1
    column = board.spaces[0].index(selection)

    until valid_space || row < -6
      if board.spaces[row][column] == "."
        board.spaces[row][column] = "O"
        valid_space = true
      end
      row -= 1
    end

    if !valid_space
      place_piece(board)
    end
  end

end

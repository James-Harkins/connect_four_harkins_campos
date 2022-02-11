require 'pry'
require './lib/board'

class Computer

  attr_reader :has_won

  def initialize
    @has_won = false
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

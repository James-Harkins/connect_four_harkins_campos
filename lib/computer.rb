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
          @has_won = true
        end
      end
    end
  end

  def check_for_vertical_victory(board)
    columns = [
      [], [], [], [], [], [], []
    ]

    board.spaces.each do |row|
      columns[0] << row[0]
      columns[1] << row[1]
      columns[2] << row[2]
      columns[3] << row[3]
      columns[4] << row[4]
      columns[5] << row[5]
      columns[6] << row[6]
    end

    columns.each do |column|
      column.each_cons(4) do |consecutive_spaces|
        if consecutive_spaces[0] == "O" &&
           consecutive_spaces[1] == "O" &&
           consecutive_spaces[2] == "O" &&
           consecutive_spaces[3] == "O"
          @has_won = true
        end
      end
    end
  end

  def check_for_diagonal_victory
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

  def reset_computer
    @has_won = false
  end

end

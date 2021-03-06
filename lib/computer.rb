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
        if consecutive_spaces.all? {|space| space == "O"}
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
        if consecutive_spaces.all? {|space| space == "O"}
          @has_won = true
        end
      end
    end
  end

  def check_for_diagonal_victory(board)
    northeast_columns = [
      [], [], [], [], [], []
    ]

    northwest_columns = [
      [], [], [], [], [], []
    ]

    northeast_columns[0] << board.spaces[4][0]
    northeast_columns[0] << board.spaces[3][1]
    northeast_columns[0] << board.spaces[2][2]
    northeast_columns[0] << board.spaces[1][3]
    northeast_columns[1] << board.spaces[5][0]
    northeast_columns[1] << board.spaces[4][1]
    northeast_columns[1] << board.spaces[3][2]
    northeast_columns[1] << board.spaces[2][3]
    northeast_columns[1] << board.spaces[1][4]
    northeast_columns[2] << board.spaces[6][0]
    northeast_columns[2] << board.spaces[5][1]
    northeast_columns[2] << board.spaces[4][2]
    northeast_columns[2] << board.spaces[3][3]
    northeast_columns[2] << board.spaces[2][4]
    northeast_columns[2] << board.spaces[1][5]
    northeast_columns[3] << board.spaces[6][1]
    northeast_columns[3] << board.spaces[5][2]
    northeast_columns[3] << board.spaces[4][3]
    northeast_columns[3] << board.spaces[3][4]
    northeast_columns[3] << board.spaces[2][5]
    northeast_columns[3] << board.spaces[1][6]
    northeast_columns[4] << board.spaces[6][2]
    northeast_columns[4] << board.spaces[5][3]
    northeast_columns[4] << board.spaces[4][4]
    northeast_columns[4] << board.spaces[3][5]
    northeast_columns[4] << board.spaces[2][6]
    northeast_columns[5] << board.spaces[6][3]
    northeast_columns[5] << board.spaces[5][4]
    northeast_columns[5] << board.spaces[4][5]
    northeast_columns[5] << board.spaces[3][6]

    northwest_columns[0] << board.spaces[4][6]
    northwest_columns[0] << board.spaces[3][5]
    northwest_columns[0] << board.spaces[2][4]
    northwest_columns[0] << board.spaces[1][3]
    northwest_columns[1] << board.spaces[5][6]
    northwest_columns[1] << board.spaces[4][5]
    northwest_columns[1] << board.spaces[3][4]
    northwest_columns[1] << board.spaces[2][3]
    northwest_columns[1] << board.spaces[1][2]
    northwest_columns[2] << board.spaces[6][6]
    northwest_columns[2] << board.spaces[5][5]
    northwest_columns[2] << board.spaces[4][4]
    northwest_columns[2] << board.spaces[3][3]
    northwest_columns[2] << board.spaces[2][2]
    northwest_columns[2] << board.spaces[1][1]
    northwest_columns[3] << board.spaces[6][5]
    northwest_columns[3] << board.spaces[5][4]
    northwest_columns[3] << board.spaces[4][3]
    northwest_columns[3] << board.spaces[3][2]
    northwest_columns[3] << board.spaces[2][1]
    northwest_columns[3] << board.spaces[1][0]
    northwest_columns[4] << board.spaces[6][4]
    northwest_columns[4] << board.spaces[5][3]
    northwest_columns[4] << board.spaces[4][2]
    northwest_columns[4] << board.spaces[3][1]
    northwest_columns[4] << board.spaces[2][0]
    northwest_columns[5] << board.spaces[6][3]
    northwest_columns[5] << board.spaces[5][2]
    northwest_columns[5] << board.spaces[4][1]
    northwest_columns[5] << board.spaces[3][0]

    northeast_columns.each do |column|
      column.each_cons(4) do |consecutive_spaces|
        if consecutive_spaces.all? {|space| space == "O"}
          @has_won = true
        end
      end
    end

    northwest_columns.each do |column|
      column.each_cons(4) do |consecutive_spaces|
        if consecutive_spaces.all? {|space| space == "O"}
          @has_won = true
        end
      end
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

  def reset_computer
    @has_won = false
  end

end

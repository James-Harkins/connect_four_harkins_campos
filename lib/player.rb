require 'pry'
require './lib/board'

class Player

  attr_reader :has_won

  def initialize
    @has_won = false
  end

  def check_for_horizontal_victory(board, piece)
    board.spaces.each do |row|
      row.each_cons(4) do |consecutive_spaces|
        if consecutive_spaces[0] == piece &&
           consecutive_spaces[1] == piece &&
           consecutive_spaces[2] == piece &&
           consecutive_spaces[3] == piece
          @has_won = true
        end
      end
    end
  end

  def check_for_vertical_victory(board, piece)
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
        if consecutive_spaces[0] == piece &&
           consecutive_spaces[1] == piece &&
           consecutive_spaces[2] == piece &&
           consecutive_spaces[3] == piece
          @has_won = true
        end
      end
    end
  end

  def check_for_diagonal_victory(board, piece)
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
        if consecutive_spaces[0] == piece &&
           consecutive_spaces[1] == piece &&
           consecutive_spaces[2] == piece &&
           consecutive_spaces[3] == piece
          @has_won = true
        end
      end
    end

    northwest_columns.each do |column|
      column.each_cons(4) do |consecutive_spaces|
        if consecutive_spaces[0] == piece &&
           consecutive_spaces[1] == piece &&
           consecutive_spaces[2] == piece &&
           consecutive_spaces[3] == piece
          @has_won = true
        end
      end
    end
  end

  def place_piece(board, piece)
    user_input = gets.chomp

    valid_space = false
    row = -1
    column = board.spaces[0].index(user_input.upcase)

    if column.nil?
      p "Invalid input. Please select another column."
      place_piece(board, piece)
    end

    until valid_space || row < -6
      if board.spaces[row][column] == "."
        board.spaces[row][column] = piece
        valid_space = true
      end
      row -= 1
    end

    if !valid_space
      p "Invalid input. Please select another column."
      place_piece(board, piece)
    end
  end

  def reset_player
    @has_won = false
  end
end

require 'pry'
require './lib/board'

class Computer

  attr_reader :has_won

  def initialize
    @has_won = false
  end

  def place_piece(board)
    columns = ["A", "B", "C", "D", "E", "F", "G"]
    selection = columns.sample
    if selection == "A"
      if board.spaces[-1][0] == "."
        board.spaces[-1][0] = "O"
      elsif board.spaces[-2][0] == "."
        board.spaces[-2][0] = "O"
      elsif board.spaces[-3][0] == "."
        board.spaces[-3][0] = "O"
      elsif board.spaces[-4][0] == "."
        board.spaces[-4][0] = "O"
      elsif board.spaces[-5][0] == "."
        board.spaces[-5][0] = "O"
      elsif board.spaces[-5][0] == "."
        board.spaces[-5][0] = "O"
      end
    elsif selection == "B"
      if board.spaces[-1][1] == "."
        board.spaces[-1][1] = "O"
      elsif board.spaces[-2][1] == "."
        board.spaces[-2][1] = "O"
      elsif board.spaces[-3][1] == "."
        board.spaces[-3][1] = "O"
      elsif board.spaces[-4][1] == "."
        board.spaces[-4][1] = "O"
      elsif board.spaces[-5][1] == "."
        board.spaces[-5][1] = "O"
      elsif board.spaces[-5][1] == "."
        board.spaces[-5][1] = "O"
      end
    elsif selection == "C"
      if board.spaces[-1][2] == "."
        board.spaces[-1][2] = "O"
      elsif board.spaces[-2][2] == "."
        board.spaces[-2][2] = "O"
      elsif board.spaces[-3][2] == "."
        board.spaces[-3][2] = "O"
      elsif board.spaces[-4][2] == "."
        board.spaces[-4][2] = "O"
      elsif board.spaces[-5][2] == "."
        board.spaces[-5][2] = "O"
      elsif board.spaces[-5][2] == "."
        board.spaces[-5][2] = "O"
      end
    elsif selection == "D"
      if board.spaces[-1][3] == "."
        board.spaces[-1][3] = "O"
      elsif board.spaces[-2][3] == "."
        board.spaces[-2][3] = "O"
      elsif board.spaces[-3][3] == "."
        board.spaces[-3][3] = "O"
      elsif board.spaces[-4][3] == "."
        board.spaces[-4][3] = "O"
      elsif board.spaces[-5][3] == "."
        board.spaces[-5][3] = "O"
      elsif board.spaces[-5][3] == "."
        board.spaces[-5][3] = "O"
      end
    elsif selection == "E"
      if board.spaces[-1][4] == "."
        board.spaces[-1][4] = "O"
      elsif board.spaces[-2][4] == "."
        board.spaces[-2][4] = "O"
      elsif board.spaces[-3][4] == "."
        board.spaces[-3][4] = "O"
      elsif board.spaces[-4][4] == "."
        board.spaces[-4][4] = "O"
      elsif board.spaces[-5][4] == "."
        board.spaces[-5][4] = "O"
      elsif board.spaces[-5][4] == "."
        board.spaces[-5][4] = "O"
      end
    elsif selection == "F"
      if board.spaces[-1][5] == "."
        board.spaces[-1][5] = "O"
      elsif board.spaces[-2][5] == "."
        board.spaces[-2][5] = "O"
      elsif board.spaces[-3][5] == "."
        board.spaces[-3][5] = "O"
      elsif board.spaces[-4][5] == "."
        board.spaces[-4][5] = "O"
      elsif board.spaces[-5][5] == "."
        board.spaces[-5][5] = "O"
      elsif board.spaces[-5][5] == "."
        board.spaces[-5][5] = "O"
      end
    elsif selection == "G"
      if board.spaces[-1][6] == "."
        board.spaces[-1][6] = "O"
      elsif board.spaces[-2][6] == "."
        board.spaces[-2][6] = "O"
      elsif board.spaces[-3][6] == "."
        board.spaces[-3][6] = "O"
      elsif board.spaces[-4][6] == "."
        board.spaces[-4][6] = "O"
      elsif board.spaces[-5][6] == "."
        board.spaces[-5][6] = "O"
      elsif board.spaces[-5][6] == "."
        board.spaces[-5][6] = "O"
      end
    end
  end

end

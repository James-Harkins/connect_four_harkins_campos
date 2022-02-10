require 'pry'
require './lib/board'

class Player

  attr_reader :has_won

  def initialize
    @has_won = false
  end

  def has_won?(board)
    board.spaces.each do |row|
      row.each do |column|
      binding.pry
      end
    end
  end

  def place_piece(board)
    user_input = gets.chomp
    if user_input == "A" || user_input == "a"
      if board.spaces[-1][0] == "."
        board.spaces[-1][0] = "X"
      elsif board.spaces[-2][0] == "."
        board.spaces[-2][0] = "X"
      elsif board.spaces[-3][0] == "."
        board.spaces[-3][0] = "X"
      elsif board.spaces[-4][0] == "."
        board.spaces[-4][0] = "X"
      elsif board.spaces[-5][0] == "."
        board.spaces[-5][0] = "X"
      elsif board.spaces[-5][0] == "."
        board.spaces[-5][0] = "X"
      else
        p "Invalid input. Please select another column."
      end
    elsif user_input == "B" || user_input == "b"
      if board.spaces[-1][1] == "."
        board.spaces[-1][1] = "X"
      elsif board.spaces[-2][1] == "."
        board.spaces[-2][1] = "X"
      elsif board.spaces[-3][1] == "."
        board.spaces[-3][1] = "X"
      elsif board.spaces[-4][1] == "."
        board.spaces[-4][1] = "X"
      elsif board.spaces[-5][1] == "."
        board.spaces[-5][1] = "X"
      elsif board.spaces[-5][1] == "."
        board.spaces[-5][1] = "X"
      else
        p "Invalid input. Please select another column."
      end
    elsif user_input == "C" || user_input == "c"
      if board.spaces[-1][2] == "."
        board.spaces[-1][2] = "X"
      elsif board.spaces[-2][2] == "."
        board.spaces[-2][2] = "X"
      elsif board.spaces[-3][2] == "."
        board.spaces[-3][2] = "X"
      elsif board.spaces[-4][2] == "."
        board.spaces[-4][2] = "X"
      elsif board.spaces[-5][2] == "."
        board.spaces[-5][2] = "X"
      elsif board.spaces[-5][2] == "."
        board.spaces[-5][2] = "X"
      else
        p "Invalid input. Please select another column."
      end
    elsif user_input == "D" || user_input == "d"
      if board.spaces[-1][3] == "."
        board.spaces[-1][3] = "X"
      elsif board.spaces[-2][3] == "."
        board.spaces[-2][3] = "X"
      elsif board.spaces[-3][3] == "."
        board.spaces[-3][3] = "X"
      elsif board.spaces[-4][3] == "."
        board.spaces[-4][3] = "X"
      elsif board.spaces[-5][3] == "."
        board.spaces[-5][3] = "X"
      elsif board.spaces[-5][3] == "."
        board.spaces[-5][3] = "X"
      else
        p "Invalid input. Please select another column."
      end
    elsif user_input == "E" || user_input == "e"
      if board.spaces[-1][4] == "."
        board.spaces[-1][4] = "X"
      elsif board.spaces[-2][4] == "."
        board.spaces[-2][4] = "X"
      elsif board.spaces[-3][4] == "."
        board.spaces[-3][4] = "X"
      elsif board.spaces[-4][4] == "."
        board.spaces[-4][4] = "X"
      elsif board.spaces[-5][4] == "."
        board.spaces[-5][4] = "X"
      elsif board.spaces[-5][4] == "."
        board.spaces[-5][4] = "X"
      else
        p "Invalid input. Please select another column."
      end
    elsif user_input == "F" || user_input == "f"
      if board.spaces[-1][5] == "."
        board.spaces[-1][5] = "X"
      elsif board.spaces[-2][5] == "."
        board.spaces[-2][5] = "X"
      elsif board.spaces[-3][5] == "."
        board.spaces[-3][5] = "X"
      elsif board.spaces[-4][5] == "."
        board.spaces[-4][5] = "X"
      elsif board.spaces[-5][5] == "."
        board.spaces[-5][5] = "X"
      elsif board.spaces[-5][5] == "."
        board.spaces[-5][5] = "X"
      else
        p "Invalid input. Please select another column."
      end
    elsif user_input == "G" || user_input == "g"
      if board.spaces[-1][6] == "."
        board.spaces[-1][6] = "X"
      elsif board.spaces[-2][6] == "."
        board.spaces[-2][6] = "X"
      elsif board.spaces[-3][6] == "."
        board.spaces[-3][6] = "X"
      elsif board.spaces[-4][6] == "."
        board.spaces[-4][6] = "X"
      elsif board.spaces[-5][6] == "."
        board.spaces[-5][6] = "X"
      elsif board.spaces[-5][6] == "."
        board.spaces[-5][6] = "X"
      else
        p "Invalid input. Please select another column."
      end
    end
  end

end

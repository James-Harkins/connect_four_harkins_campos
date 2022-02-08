require 'pry'
require './lib/space'

class Board

  attr_reader :header_row,
              :row_1,
              :row_2,
              :row_3,
              :row_4,
              :row_5,
              :row_6

  def initialize
    @spaces = [
      ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.']
    ]
  end

  def print_board
    @spaces.each do |row|
      row.each do |column|
        print column.to_s + " "
      end
    puts
    end
  end

end

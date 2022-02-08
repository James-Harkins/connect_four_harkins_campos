require 'pry'

class Board

  attr_reader :spaces

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

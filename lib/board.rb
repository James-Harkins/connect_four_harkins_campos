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
      row.each do |space|
        print space + " "
      end
    puts
    end
  end

  def reset_board
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

  def draw?
    full_row_count = 0

    @spaces.each do |row|
      if !row.include?(".")
        full_row_count += 1
      end
    end

    if full_row_count == 7
      return true
    else
      return false
    end
  end
end

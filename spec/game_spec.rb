require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/game'
require 'pry'


RSpec.describe Game do
  before(:each) do
    @board = Board.new
    @player = Player.new
    @computer = Computer.new
    @game = Game.new(@board, @player, @computer)
  end

  describe '#initialize' do
    it 'starts out with an empty board' do

      expect(@board.spaces).to eq([
      ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.'],
      ['.', '.', '.', '.', '.', '.', '.']
    ])
    end
  end
end

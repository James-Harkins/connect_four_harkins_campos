require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/game'
require 'pry'


RSpec.describe Game do
  before(:each) do
    @board = Board.new
    @player_one = Player.new
    @player_two = Player.new
    @computer = Computer.new
    @game = Game.new(@board, @player_one, @player_two, @computer)
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

require './lib/board'
require './lib/player'
require 'pry'


RSpec.describe Player do
  before(:each) do
    @player = Player.new
  end

  describe '#initialize' do
    it 'has not won' do

    expect(@player.has_won).to eq(false)
    end
  end

  describe '# has_won?' do
    it 'has won' do
      board = Board.new
      @player.has_won?(board)
    end
  end

end

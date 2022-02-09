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







end

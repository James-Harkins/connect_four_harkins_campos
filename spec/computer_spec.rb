require './lib/board'
require './lib/computer'
require 'pry'


RSpec.describe Computer do
  before(:each) do
    @computer = Computer.new
  end

  describe '#initialize' do
    it 'has not won' do

    expect(@computer.has_won).to eq(false)
    end
  end






end

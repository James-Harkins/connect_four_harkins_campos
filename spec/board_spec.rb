require 'pry'
require 'rspec'
require './lib/board'

RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end
  describe '#initialize' do
    it "exists" do

      expect(@board).to be_an_instance_of(Board)
    end

    it "has a first row listing the columns" do

        expect(@board.header_row).to eq(["A B C D E F G"])
    end

    it "has six rows with all empty spaces by default" do

      expect(@board.row_1).to eq([])
      expect(@board.row_2).to eq([])
      expect(@board.row_3).to eq([])
      expect(@board.row_4).to eq([])
      expect(@board.row_5).to eq([])
      expect(@board.row_6).to eq([])
    end
  end

  describe '#create_spaces' do
    it "creates 42 blank spaces" do

      @board.create_spaces

      expect(@board.row_1.length).to eq(6)
      expect(@board.row_2.length).to eq(6)
      expect(@board.row_3.length).to eq(6)
      expect(@board.row_4.length).to eq(6)
      expect(@board.row_5.length).to eq(6)
      expect(@board.row_6.length).to eq(6)
    end
  end
end

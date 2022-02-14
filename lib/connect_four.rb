require 'pry'
require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/game'

board = Board.new
player_one = Player.new
player_two = Player.new
computer = Computer.new
game = Game.new(board, player_one, player_two, computer)
game.start

require 'pry'
require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/game'

board = Board.new
player = Player.new
computer = Computer.new
game = Game.new(board, player, computer)
game.start

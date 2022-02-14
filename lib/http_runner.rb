require 'socket'
require './lib/board'
require './lib/player'
require './lib/computer'
require './lib/game'


loop do
  server = TCPServer.new(9292)
  board = Board.new
  player = Player.new
  computer = Computer.new
  game = Game.new(board, player, computer)

  puts 'Waiting for request...'
  connection = server.accept

  puts "Got this Request:"
  request_lines = []
  line = connection.gets.chomp
  while !line.empty?
    request_lines << line
    line = connection.gets.chomp
  end

  puts request_lines

  request_line = request_lines[0]
  if request_line.include? '?'
    path = request_line.split[1]
    params = path.split("placement=")
    guess = params[-1]
  end

  puts "Sending response."

  output = "<html>#{game.run_game}</html>"
  status = "http/1.1 200 ok"
  response = status + "\r\n" + "\r\n" + output

  connection.puts response
  connection.close
end

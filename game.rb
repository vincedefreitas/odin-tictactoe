require_relative 'display'
require_relative 'board'
require_relative 'player'

class Game
  include Display

  attr_accessor :board, :player_one, :player_two, :current_player

  def initialize
    @board = Board.new
    @player_one = nil
    @player_two = nil
    @current_player = nil
  end

  def create_player(number)
    puts request_name(number)
    name = gets.chomp 
    puts request_marker
    marker = gets.chomp
    Player.new(name, marker)
  end
end

game = Game.new
@player_one = game.create_player(1)
p @player_one











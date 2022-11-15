# Game logic

require_relative 'display'
require_relative 'board'
require_relative 'player'

class Game
  include Display

  attr_accessor :board, :player_one, :player_two, :current_player

  @game_over = false

  def initialize
    @board = Board.new
    @player_one = nil
    @player_two = nil
    @current_player = nil
  end

  def game_set_up
    @player_one = create_player(1)
    @player_two = create_player(2)
    @current_player = @player_one
  end

  def create_player(number)
    puts request_name(number)
    name = gets.chomp
    puts request_marker
    marker = gets.chomp
    Player.new(name, marker)
  end

  def place_marker
    puts enter_number(current_player.name, current_player.marker)
    number = gets.chomp.to_i
    board.update_square(number, current_player.marker)
  end

  def switch_player
    @current_player == @player_one ? @current_player = @player_two : @current_player = @player_one
  end

  def check_win
    if @board.win?
      @game_over = true
      puts win(@current_player.name)
    end
  end

  def check_draw
    if @board.full?
      @game_over = true
      puts draw
    end
  end

  def game_logic
    game_set_up
    board.display_board
    until @game_over == true
      place_marker
      check_win
      check_draw
      switch_player
    end
  end
end

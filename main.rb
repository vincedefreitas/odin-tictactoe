require_relative 'display'
require_relative 'board'
require_relative 'player'
require_relative 'game'

def play_game
  game = Game.new
  game.game_logic
  repeat_game
end

def repeat_game
  puts "Would you like to play a new game? Press 'y' for yes, or 'n' for no"
  answer = gets.chomp.downcase
  if answer == 'y'
    play_game
  else
    puts 'Thanks for playing!'
  end
end

play_game

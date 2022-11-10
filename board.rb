# Board used to play Tic Tac Toe
class Board
  attr_accessor :board

  @winning_combinations = [[0, 1, 2], [0, 3, 6], [6, 7, 8], [2, 5, 8], [0, 4, 8], [2, 4, 6], [3, 4, 5], [1, 4, 7]]

  def initialize
    @squares = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display_board
    puts " #{@squares[0]} | #{@squares[1]} | #{@squares[2]} \n---+---+---\n #{@squares[3]} | #{@squares[4]} |" \
         " #{@squares[5]} \n---+---+---\n #{@squares[6]} | #{@squares[7]} | #{@squares[8]} "
  end

  def update_square(number, marker)
    @squares[number] = marker
  end
end
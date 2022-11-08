# Class to create player objects
class Player
  attr_accessor :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
    @score = 0
  end
end
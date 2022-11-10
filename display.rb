module Display

  def name
    "What is the name of Player #{number}?"
  end

  def marker
    "What letter would you like to be your game marker?"
  end

  def enter_number
    "#{@name}, please enter a number (1-9) that is available to replace an #{@marker}"
  end

  def win
    "GAME OVER! "



end

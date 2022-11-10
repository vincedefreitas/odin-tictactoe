module Display

  def request_name(number)
    "What is the name of Player #{number}?"
  end

  def request_marker
    'What letter would you like to be your game marker?'
  end

  def enter_number(name, marker)
    "#{name}, please enter a number (1-9) that is available to replace an #{marker}"
  end

  def win
    "GAME OVER! "
  end



end

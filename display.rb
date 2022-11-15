# Display messages for game

module Display
  def request_name(number)
    "What is the name of Player #{number}?"
  end

  def request_marker
    'What letter would you like to be your game marker?'
  end

  def enter_number(name, marker)
    "\n#{name}, please enter a number (1-9) that is available to replace an #{marker}"
  end

  def invalid_answer
    'Sorry, that is an invalid answer. Try again.'
  end

  def win(name)
    "\nGAME OVER! #{name} is the winner!"
  end

  def draw
    "\nIt's a draw!"
  end
end

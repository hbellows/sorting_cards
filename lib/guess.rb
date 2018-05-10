class Guess
  attr_reader :user_input, :card

  def initialize(user_input, card)
    @user_input = user_input
    @card = card
  end

  def correct?
    user_input = @user_input.split
    if user_input[0] == card.value && user_input[2] == card.suit
      true
    else
      false
    end
  end

  def feedback
    if correct? == true
      'Correct!'
    else
      'Incorrect!'
    end
  end
end

class Guess
  attr_reader :response, :card

  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
    response = @response.split
    if response[0] == card.value && response[2] == card.suit
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

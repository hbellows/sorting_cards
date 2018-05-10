class Round
  attr_reader     :deck
  attr_accessor :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  # def guesses
  #   guesses = []
  # end

  def current_card
    deck.cards.first
  end

  def record_guess(guess)
    @guesses << guess
    guess
  end

  def count
    @guesses.count
  end

end

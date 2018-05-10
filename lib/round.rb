class Round
  attr_reader     :deck
  attr_accessor :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
  end

  # def guesses
  #   guesses = []
  # end

  def current_card
    deck.cards.first
  end

  def record_guess(user_input)
    new_guess = Guess.new(user_input, current_card)
    @guesses << new_guess
    if new_guess.correct?
      current_card = deck[1]
    new_guess
  end

  # def shuffle_deck
  #   if @new_guess.correct?
  #     @guesses
  #   end
  # end

  # def count
  #   @guesses.count
  # end

  # def feedback
  #
  # end

  def number_correct
    counter = 0
    @guesses.map do |guess|
      if guess.correct?
        counter +=1
      end
    end
  end

end

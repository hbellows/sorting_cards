require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test

  def test_a_round_has_a_deck_of_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Deck, round.deck
  end

  def test_a_round_can_have_guesses
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal [], round.guesses
  end

  def test_it_has_a_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal card_1, round.current_card
  end

  def test_it_can_record_a_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Guess, round.record_guess('3 of Hearts')
  end

  # def test_it_shuffles_the_deck
  #   card_1 = Card.new("3","Hearts")
  #   card_2 = Card.new("4", "Clubs")
  #   deck = Deck.new([card_1, card_2])
  #   round = Round.new(deck)
  #
  #   round.record_guess('3 of Hearts')
  #   round.shuffle_deck
  #   round.record_guess('Jack of Diamonds')
  #   round.shuffle_deck
  #   assert_equal card_2, round.shuffle_deck
  #   assert_equal card_1, round.shuffle_deck
  # end

  def test_it_can_count_guesses
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    round.record_guess('3 of Hearts')
    assert_equal 1, round.guesses.count
  end

  def test_it_can_give_feedback
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    round.record_guess('3 of Hearts')
    round.record_guess('Jack of Diamonds')

    assert_equal 'Correct!', round.guesses.first.feedback
    assert_equal 'Incorrect!', round.guesses.first.feedback
  end

  def test_it_can_count_correct_guesses
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    round.record_guess('3 of Hearts')
    round.record_guess('Jack of Diamonds')
    assert_equal 1, round.number_correct
  end
end

  # round.number_correct
  # => 1
  # round.current_card
  # => #<Card:0x007ffdf1820a90 @value="4", @suit="Clubs">
  # round.record_guess("Jack of Diamonds")
  # => #<Guess:0x007ffdf19c8a00 @card=#<Card:0x007ffdf1820a90 @value="4", @suit="Clubs">, @user_input="Jack of Diamonds">
  # round.guesses.count
  # => 2
  # round.guesses.last.feedback
  # => "Incorrect."
  # round.number_correct
  # => 1
  # round.percent_correct
  # => 50

require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'

class GuessTest < Minitest::Test

  def test_it_has_a_card
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)

    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)

    assert_instance_of Card, card_1
    assert_instance_of Card, card_2
  end

  def test_it_has_a_
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)

    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)

    assert_equal '10 of Hearts', guess_1.
    assert_equal '2 of Diamonds', guess_2.
  end

  def test_it_is_correct
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)

    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)

    assert guess_1.correct?
    refute guess_2.correct?
  end

  def test_it_gives_feedback
    card_1 = Card.new("10", "Hearts")
    guess_1 = Guess.new("10 of Hearts", card_1)

    card_2 = Card.new("Queen", "Clubs")
    guess_2 = Guess.new("2 of Diamonds", card_2)

    assert_equal 'Correct!', guess_1.feedback
    assert_equal 'Incorrect!', guess_2.feedback
  end
end

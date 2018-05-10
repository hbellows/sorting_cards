require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_a_card_has_a_value
    card = Card.new("Ace", "Spades")

    assert_equal 'Ace', card.value
  end

  def test_a_card_has_a_suit
    card = Card.new("Ace", "Spades")

    assert_equal 'Spades', card.suit
  end
end

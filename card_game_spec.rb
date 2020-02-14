require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('card_game')
require_relative('card')

class TestCardGame < Minitest::Test

  def setup
    @card1 = Card.new("clubs", 4)
    @card2 = Card.new("hearts", 1)
    @cards = [@card1, @card2]
    @cardgame = CardGame.new()
  end

  def test_card_has_suit()
    assert_equal("clubs", @card1.suit)
  end

  def test_card_has_value()
    assert_equal(4, @card1.value)
  end

  def test_check_for_ace__true()
    result = @cardgame.check_for_ace(@card2)
    assert_equal(true, result)
  end

  def test_check_for_ace__false()
    result = @cardgame.check_for_ace(@card1)
    assert_equal(false, result)
  end

  def test_highest_card()
    result = @cardgame.highest_card(@card1, @card2)
    assert_equal(@card1, result)
  end

  def test_total_cards()
    result = CardGame.cards_total(@cards)
    expected_string = "Your cards have a total value of 5!"
    assert_equal(expected_string, result)
  end




end

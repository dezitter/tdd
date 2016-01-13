require 'dollar'
require 'franc'
require 'minitest/autorun'

class TestMoney < Minitest::Test

  def test_equality
    refute_equal Money.franc(5), Money.dollar(5)
  end

  def test_currency
    assert_equal "USD", Money.dollar(1).currency
    assert_equal "CHF", Money.franc(1).currency
  end

end

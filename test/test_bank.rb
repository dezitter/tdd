require 'bank'
require 'money'
require 'minitest/autorun'

class TestBank < Minitest::Test

  def test_simple_addition
    five = Money.dollar(5)
    sum = five.plus(five)
    bank = Bank.new
    reduced = bank.reduce(sum, "USD")
    assert_equal Money.dollar(10), reduced
  end

  def test_reduce_sum
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduce(sum, "USD")
    assert_equal Money.dollar(7), result
  end

  def test_reduce_money
    bank = Bank.new
    result = bank.reduce(Money.dollar(1), "USD")
    assert_equal Money.dollar(1), result
  end

  def test_reduce_money_different_currency
    bank = Bank.new
    bank.addRate("CHF", "USD", 2)
    result = bank.reduce(Money.franc(2), "USD")
    assert_equal Money.dollar(1), result
  end

  def test_identity_rate
    assert_equal 1, Bank.new.rate("USD", "USD")
  end

end

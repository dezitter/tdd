require 'bank'
require 'money'
require 'minitest/autorun'

class TestSum < Minitest::Test

  def test_plus_returns_sum
    five = Money.dollar(5)
    sum = five.plus(five)
    assert_equal five, sum.augend
    assert_equal five, sum.addend
  end

  def test_sum_plus_money
    fiveBucks = Money.dollar(5)
    tenFrancs = Money.franc(10)
    bank = Bank.new
    bank.addRate("CHF", "USD", 2)
    sum = Sum.new(fiveBucks, tenFrancs).plus(fiveBucks)
    result = bank.reduce(sum, "USD")
    assert_equal Money.dollar(15), result
  end

  def test_sum_times
    fiveBucks = Money.dollar(5)
    tenFrancs = Money.franc(10)
    bank = Bank.new
    bank.addRate("CHF", "USD", 2)
    sum = Sum.new(fiveBucks, tenFrancs).times(2)
    result = bank.reduce(sum, "USD")
    assert_equal Money.dollar(20), result
  end

end

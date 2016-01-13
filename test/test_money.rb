require 'money'
require 'minitest/autorun'

class TestMoney < Minitest::Test

  def test_multiplication
    five = Money.dollar(5)
    assert_equal Money.dollar(10), five.times(2)
    assert_equal Money.dollar(15), five.times(3)

  end

  def test_franc_mutiplication
    five = Money.franc(5)
    assert_equal Money.franc(10), five.times(2)
    assert_equal Money.franc(15), five.times(3)
  end

  def test_equality
    assert_equal Money.dollar(5), Money.dollar(5)
    refute_equal Money.dollar(5), Money.dollar(6)
    refute_equal Money.franc(5), Money.dollar(5)
  end

  def test_currency
    assert_equal "USD", Money.dollar(1).currency
    assert_equal "CHF", Money.franc(1).currency
  end

  def test_different_class_equality
    assert_equal Money.new(5, "CHF"), Money.new(5, "CHF")
  end

end

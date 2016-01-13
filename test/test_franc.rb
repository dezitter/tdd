require 'franc'
require 'minitest/autorun'

class TestFranc < Minitest::Test

  def test_multiplication
    five = Money.franc(5)
    assert_equal Money.franc(10), five.times(2)
    assert_equal Money.franc(15), five.times(3)
  end

  def test_equality
    assert_equal Money.franc(5), Money.franc(5)
    refute_equal Money.franc(5), Money.franc(6)
  end

end

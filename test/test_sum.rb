require 'money'
require 'minitest/autorun'

class TestSum < Minitest::Test

  def test_plus_returns_sum
    five = Money.dollar(5)
    sum = five.plus(five)
    assert_equal five, sum.augend
    assert_equal five, sum.addend
  end

end

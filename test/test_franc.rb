require 'franc'
require 'minitest/autorun'

class TestFranc < Minitest::Test

  def test_multiplication
    five = Franc.new(5)
    assert_equal Franc.new(10), five.times(2)
    assert_equal Franc.new(15), five.times(3)
  end

  def test_equality
    assert_equal Franc.new(5), Franc.new(5)
    refute_equal Franc.new(5), Franc.new(6)
  end

end

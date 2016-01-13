require 'franc'
require 'minitest/autorun'

class TestFranc < Minitest::Test

  def test_multiplication
    five = Franc.new(5)
    assert_equal Franc.new(10), five.times(2)
    assert_equal Franc.new(15), five.times(3)
  end

end

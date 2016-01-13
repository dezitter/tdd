require 'dollar'
require 'minitest/autorun'

class TestDollar < Minitest::Test

  def test_multiplication
    five = Dollar.new(5)
    assert_equal Dollar.new(10), five.times(2)
    assert_equal Dollar.new(15), five.times(3)
  end

  def test_equality
    assert_equal Dollar.new(5), Dollar.new(5)
    refute_equal Dollar.new(5), Dollar.new(6)
  end

end

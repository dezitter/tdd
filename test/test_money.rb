require 'dollar'
require 'franc'
require 'minitest/autorun'

class TestMoney < Minitest::Test

  def test_equality
    refute_equal Franc.new(5), Dollar.new(5)
  end

end


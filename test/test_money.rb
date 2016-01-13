require 'dollar'
require 'franc'
require 'minitest/autorun'

class TestMoney < Minitest::Test

  def test_equality
    refute_equal Money.franc(5), Money.dollar(5)
  end

end


require 'money'

class Dollar < Money

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Dollar.new(@amount*multiplier)
  end

end

class Money
  attr_reader :amount
  protected :amount

  def ==(other)
    (amount == other.amount) and (self.class == other.class)
  end

  def times(multiplier); end

  class << self

    def dollar(amount)
      Dollar.new(amount)
    end

    def franc(amount)
      Franc.new(amount)
    end

  end

end

class Money
  attr_reader :amount, :currency
  protected :amount

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    (amount == other.amount) and (self.class == other.class)
  end

  def times(multiplier); end

  class << self

    def dollar(amount)
      Dollar.new(amount, "USD")
    end

    def franc(amount)
      Franc.new(amount, "CHF")
    end

  end
end

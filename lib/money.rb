class Money
  attr_reader :amount, :currency
  protected :amount

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    (amount == other.amount) and (currency == other.currency)
  end

  def times(multiplier)
    Money.new(@amount * multiplier, currency)
  end

  class << self

    def dollar(amount)
      Dollar.new(amount, "USD")
    end

    def franc(amount)
      Franc.new(amount, "CHF")
    end

  end
end

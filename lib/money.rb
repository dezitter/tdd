require 'sum'

class Money
  attr_reader :amount, :currency

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

  def plus(addend)
    Sum.new(self, addend)
  end

  def reduce(to)
    self
  end

  class << self

    def dollar(amount)
      Money.new(amount, "USD")
    end

    def franc(amount)
      Money.new(amount, "CHF")
    end

  end
end

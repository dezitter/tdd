class Money
  attr_reader :amount
  protected :amount

  def ==(other)
    amount == other.amount
  end

end

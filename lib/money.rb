class Money
  attr_reader :amount
  protected :amount

  def ==(other)
    (amount == other.amount) and (self.class == other.class)
  end

end

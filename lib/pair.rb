class Pair
  attr_reader :from, :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def eql?(other)
    from == other.from and to == other.to
  end

  def hash
    0
  end
end

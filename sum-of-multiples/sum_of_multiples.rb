class SumOfMultiples
  def initialize(*factors)
    @factors = factors
  end

  def to(n)
    (1...n).select { |e| @factors.any? { |f| e % f == 0 } }.sum
  end
end

module BookKeeping
  VERSION = 1
end

class Squares

  def initialize(n)
    @n = n
  end

  def square_of_sum
    (@n * (1 + @n) / 2) ** 2
  end

  def sum_of_squares
    (1..@n).inject(0) { |sum, n| sum + n ** 2 }
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end

class Triangle
  def initialize(edges)
    @edges = edges
  end

  def equilateral?
    valid? && @edges.uniq.size == 1
  end

  def isosceles?
    valid? && @edges.uniq.size < 3
  end

  def scalene?
    valid? && @edges.uniq.size == 3
  end

  def valid?
    @edges.size == 3 && @edges.all? { |e| e > 0 && e < @edges.sum / 2.0 }
  end
end

module BookKeeping
  VERSION = 1
end

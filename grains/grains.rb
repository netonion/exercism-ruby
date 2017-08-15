module Grains
  def self.square(n)
    raise ArgumentError unless (1..64).include? n
    2 ** (n - 1)
  end

  def self.total
    (1..64).sum { |n| square(n) }
  end
end

module BookKeeping
  VERSION = 1
end

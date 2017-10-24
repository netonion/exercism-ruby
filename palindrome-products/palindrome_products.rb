class PalindromeProduct

  attr_reader :value, :factors

  def initialize(value, factors)
    @value, @factors = value, factors
  end
end

class Palindromes

  attr_reader :smallest, :largest

  def initialize(min_factor: 1, max_factor:)
    @max_factor, @min_factor = max_factor, min_factor
  end

  def generate
    max = -Float::INFINITY
    min = Float::INFINITY
    max_factors = []
    min_factors = []
    (@min_factor..@max_factor).each do |x|
      (x..@max_factor).each do |y|
        prod = x * y
        if prod.to_s.reverse.to_i == prod
          if prod > max
            max = prod
            max_factors = [[x, y]]
          elsif prod == max
            max_factors.push [x, y]
          end

          if prod < min
            min = prod
            min_factors = [[x, y]]
          elsif prod == min
            min_factors.push [x, y]
          end
        end
      end
    end
    @smallest = PalindromeProduct.new(min, min_factors)
    @largest = PalindromeProduct.new(max, max_factors)
  end
end

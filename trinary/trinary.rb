class Trinary
  def initialize(trinary)
    @trinary = trinary
  end

  def to_decimal
    return 0 if @trinary =~ /[^0-2]/
    @trinary.chars.inject(0) { |acc, d| acc * 3 + d.to_i }
  end
end

module BookKeeping
  VERSION = 1
end

class Hexadecimal
  def initialize(hex)
    @hex = hex
  end

  def to_decimal
    return 0 if @hex =~ /[^0-9a-f]/
    @hex.chars.inject(0) do |acc, d|
      acc * 16 + (('0'..'9').cover?(d) ? d.to_i : d.ord - 'a'.ord + 10)
    end
  end
end

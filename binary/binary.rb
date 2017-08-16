module Binary
  def self.to_decimal(binary)
    raise ArgumentError unless binary.count('01') == binary.size
    binary.chars.reduce(0) { |decimal, d| decimal * 2 + d.to_i }
  end
end

module BookKeeping
  VERSION = 3
end

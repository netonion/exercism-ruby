module Prime
  def self.nth(n)
    raise ArgumentError if n < 1
    (2..Float::INFINITY).lazy.select { |e| prime?(e) }.first(n).last
  end

  private

  def self.prime?(n)
    (2..Math.sqrt(n).floor).all? { |e| n % e != 0 }
  end
end

module BookKeeping
  VERSION = 1
end

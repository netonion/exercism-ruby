module RunLengthEncoding
  def self.encode(input)
    input.gsub(/(.)\1+/) { |match| match.length.to_s + match.chr }
  end

  def self.decode(input)
    input.gsub(/(\d+)(\D)/) { $2 * $1.to_i }
  end
end

module BookKeeping
  VERSION = 3
end

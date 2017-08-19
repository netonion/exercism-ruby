class Nucleotide

  NUCLEOTIDES = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }

  attr_reader :histogram

  def self.from_dna(dna)
    raise ArgumentError unless dna.chars.all? { |n| NUCLEOTIDES.keys.include? n }
    new(dna)
  end

  def initialize(dna)
    @histogram = dna.chars.each_with_object(NUCLEOTIDES.dup) { |n, acc| acc[n] += 1 }
  end

  def count(nucleotide)
    @histogram[nucleotide]
  end
end

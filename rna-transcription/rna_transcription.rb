
module Complement

  MAPPING = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def self.of_dna dna
    rna = dna.chars.map { |e| MAPPING[e] }.join
    rna.length == dna.length ? rna : ''
  end
end

module BookKeeping
  VERSION = 4
end

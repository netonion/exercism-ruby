
module Complement
  def self.of_dna(dna)
    dna.count('GCTA') == dna.size ? dna.tr('GCTA', 'CGAU') : ''
  end
end

module BookKeeping
  VERSION = 4
end

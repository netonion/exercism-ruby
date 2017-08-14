module Raindrops
  def self.convert(n)
    res = ''
    res << 'Pling' if n % 3 == 0
    res << 'Plang' if n % 5 == 0
    res << 'Plong' if n % 7 == 0
    res.empty? ? n.to_s : res
  end
end

module BookKeeping
  VERSION = 3
end

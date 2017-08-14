module Pangram
  def self.pangram?(phrase)
    (('a'..'z').to_a - phrase.downcase.split('')).empty?
  end
end

module BookKeeping
  VERSION = 4
end

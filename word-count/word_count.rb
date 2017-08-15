class Phrase
  def initialize(phrase)
    @phrase = phrase.gsub(/\W'|'\W/, ' ')
  end

  def word_count
    @phrase.downcase.split(/[^\w']+/).reduce(Hash.new(0)) { |acc, w| acc[w] += 1; acc }
  end
end

module BookKeeping
  VERSION = 1
end

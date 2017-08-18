class Anagram
  def initialize(word)
    @word = word.downcase
    @sorted_chars = @word.chars.sort
  end

  def match(list)
    list.select { |e| e.downcase.chars.sort == @sorted_chars && e.downcase != @word}
  end
end

module BookKeeping
  VERSION = 2
end

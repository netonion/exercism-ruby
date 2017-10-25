module FoodChain
  ANIMALS = %w(fly spider bird cat dog goat cow)
  COMMENTS = [
    "",
    "It wriggled and jiggled and tickled inside her.\n",
    "How absurd to swallow a bird!\n",
    "Imagine that, to swallow a cat!\n",
    "What a hog, to swallow a dog!\n",
    "Just opened her throat and swallowed a goat!\n",
    "I don't know how she swallowed a cow!\n"
  ]

  # Each verse consists of two parts - the first two lines (part 1) and the rest (part 2)
  # Each part 2 is the previous part 2 with a new line prepended to it
  def self.song
    verses, rest = "", "I don't know why she swallowed the fly. Perhaps she'll die.\n\n"
    7.times do |i|
      verses.concat("I know an old lady who swallowed a #{ANIMALS[i]}.\n#{COMMENTS[i]}").concat(rest)
      rest.prepend "She swallowed the #{ANIMALS[i + 1]} to catch the #{ANIMALS[i]}#{ ' that wriggled and jiggled and tickled inside her' if i == 1}.\n"
    end
    verses + "I know an old lady who swallowed a horse.\nShe's dead, of course!\n"
  end
end

module BookKeeping
  VERSION = 2
end

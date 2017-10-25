module House
  PARTS = [
    "the house that Jack built",
    "the malt\nthat lay in ",
    "the rat\nthat ate ",
    "the cat\nthat killed ",
    "the dog\nthat worried ",
    "the cow with the crumpled horn\nthat tossed ",
    "the maiden all forlorn\nthat milked ",
    "the man all tattered and torn\nthat kissed ",
    "the priest all shaven and shorn\nthat married ",
    "the rooster that crowed in the morn\nthat woke ",
    "the farmer sowing his corn\nthat kept ",
    "the horse and the hound and the horn\nthat belonged to "
  ]

  def self.recite
    verses = ""
    PARTS.size.times do |i|
      verses.concat("This is " + PARTS[0..i].reverse.join + ".\n\n")
    end
    verses.chop
  end
end

class BeerSong
  def verse(n)
    case n
    when 2
      <<-TEXT
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
TEXT
    when 1
      <<-TEXT
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
TEXT
    when 0
      <<-TEXT
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
TEXT
    else
      <<-TEXT
#{n} bottles of beer on the wall, #{n} bottles of beer.
Take one down and pass it around, #{n - 1} bottles of beer on the wall.
TEXT
    end
  end

  def verses(start, finish)
    start.downto(finish).map { |i| verse(i) }.join("\n")
  end
end

module BookKeeping
  VERSION = 3
end

class Queens

  def initialize(white: [], black: [])
    raise ArgumentError unless (white + black).all? { |e| (0..7).cover? e }
    @white, @black  = white, black
  end

  def attack?
    @white.first == @black.first ||
    @white.last  == @black.last  ||
    @white.first - @black.first == @white.last - @black.last ||
    @white.first - @black.first == @black.last - @white.last
  end

end

module BookKeeping
  VERSION = 2
end

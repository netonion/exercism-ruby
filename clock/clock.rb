class Clock

  def self.at(hr, min)
    new(hr, min)
  end

  def initialize(hr, min)
    @hr = hr
    @min = min
  end

  def to_s
    "%02d:%02d" % [(@hr + @min / 60) % 24, @min % 60]
  end

  def +(min)
    Clock.new(@hr, @min + min)
  end

  def ==(clock)
    to_s == clock.to_s
  end
end

module BookKeeping
  VERSION = 2
end

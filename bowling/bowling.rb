class Game

  class BowlingError < StandardError; end

  class Frame

    attr_reader   :first
    attr_accessor :next

    def initialize(pins)
      @first = pins
    end

    def roll(pins)
      @second = pins
      raise BowlingError if total > 10
    end

    def spare?
      @first != 10 && total == 10
    end

    def strike?
      @first == 10
    end

    def total
      @first + (@second || 0)
    end

    def bonus_for_prev_strike
      total + (strike? ? @next.first : 0)
    end

    def score
      case
      when strike?
        total + @next.bonus_for_prev_strike
      when spare?
        total + @next.first
      else
        total
      end
    end

    def finished?
      strike? || @second
    end
  end

  class TenthFrame < Frame

    def initialize(pins)
      super
    end

    def roll(pins)
      @second ? @third = pins : @second = pins
      raise BowlingError if invalid?
    end

    def total
      @first + @second + (@third || 0)
    end

    def score
      total
    end

    def bonus_for_prev_strike
      @first + @second
    end

    def finished?
      @third || (@second && @first + @second < 10)
    end

    private

    def invalid?
      (@first + @second < 10 && @third) ||
      (@first < 10 && @first + @second > 10) ||
      (@first == 10 && @second < 10 && @second + (@third || 0) > 10)
    end
  end

  def initialize
    @frames = []
  end

  def roll(pins)
    raise BowlingError if !((0..10) === pins) || finished?

    if @frames.empty? || @frames.last.finished?
      new_frame = @frames.size < 9 ? Frame.new(pins) : TenthFrame.new(pins)
      @frames.last.next = new_frame unless @frames.empty?
      @frames << new_frame
    else
      @frames.last.roll(pins)
    end
  end

  def score
    raise BowlingError unless finished?
    @frames.sum { |frame| frame.score }
  end

  private

  def finished?
    @frames.size == 10 && @frames.last.finished?
  end
end

module BookKeeping
  VERSION = 3
end

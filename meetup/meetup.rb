require 'date'

class Meetup

  def initialize(month, year)
    @month, @year = month, year
  end

  def day(weekday, schedule)
    range = case schedule
      when :first
        1..7
      when :second
        8..14
      when :third
        15..21
      when :fourth
        22..28
      when :last
        days = Date.new(@year, @month, -1).day
        (days - 6)..days
      when :teenth
        13..19
    end
    range.map { |e| Date.new(@year, @month, e) }.find { |e| e.send("#{weekday}?") }
  end

end

class Series
  def initialize(series)
    @series = series
  end

  def slices(n)
    raise ArgumentError if n > @series.size
    (0..@series.size - n).map { |i| @series[i, n] }
  end
end

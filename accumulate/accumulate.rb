module Enumerable
  def accumulate
    res = []
    each { |e| res << yield(e) }
    res
  end
end

module BookKeeping
  VERSION = 1
end

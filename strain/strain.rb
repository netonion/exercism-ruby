class Array
  def keep
    res = []
    each { |e| res << e if yield(e) }
    res
  end

  def discard(&blk)
    self - keep(&blk)
  end
end

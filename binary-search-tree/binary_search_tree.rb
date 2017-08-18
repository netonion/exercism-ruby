class Bst

  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
  end

  def insert(data)
    if data <= @data
      @left ? @left.insert(data) : @left = Bst.new(data)
    else
      @right ? @right.insert(data) : @right = Bst.new(data)
    end
  end

  def each(&blk)
    return to_enum unless block_given?

    @left.each(&blk) if @left
    yield @data
    @right.each(&blk) if @right

    self
  end
end

module BookKeeping
  VERSION = 1
end

module FlattenArray

  VERSION = 1

  def self.flatten(arr)
    arr.each_with_object([]) do |x, acc|
      x.is_a?(Array) ? acc.concat(flatten(x)) : (acc << x if x)
    end
  end
end

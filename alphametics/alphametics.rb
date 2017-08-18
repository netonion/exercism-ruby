module Alphametics
  def self.solve(input)
    letters = input.gsub(/\W/, '').chars.uniq
    start = input.scan(/\b\w/).uniq
    range = letters.map { |e| start.include?(e) ? (1..9).to_a : (0..9).to_a }
    product = range.first.product(*range.drop(1)).select { |e| e.uniq.size == e.size}
    digits = product.find do |translation|
      eval(input.tr(letters.join, translation.join))
    end
    digits ? letters.zip(digits).to_h : {}
  end
end

module BookKeeping
  VERSION = 4
end

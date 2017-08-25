class Say
  RULES = {
  90 => 'ninety',
  80 => 'eighty',
  70 => 'seventy',
  60 => 'sixty',
  50 => 'fifty',
  40 => 'forty',
  30 => 'thirty',
  20 => 'twenty',
  19 => 'nineteen',
  18 => 'eighteen',
  17 => 'seventeen',
  16 => 'sixteen',
  15 => 'fifteen',
  14 => 'fourteen',
  13 => 'thirteen',
  12 => 'twelve',
  11 => 'eleven',
  10 => 'ten',
  9 => 'nine',
  8 => 'eight',
  7 => 'seven',
  6 => 'six',
  5 => 'five',
  4 => 'four',
  3 => 'three',
  2 => 'two',
  1 => 'one',
  0 => 'zero'
}

  def initialize(question)
    @english = translate(question)
  end

  def in_english
    @english
  end

  private
  def translate(n)
    case n
    when 0..20
      RULES[n]
    when 21..99
      RULES[n / 10 * 10] + ((n % 10).zero? ? '' : '-' + RULES[n % 10])
    when 100...1e12
      [[1000, ' hundred'], [1e6, ' thousand'], [1e9, ' million'], [1e12, ' billion']].each do |limit, word|
        if n < limit
          denom = limit > 1000 ? limit.to_i / 1000 : 100
          div, mod = n.divmod(denom)
          return translate(div) + word + (mod.zero? ? '' : ' ' + translate(mod))
        end
      end
    else
      raise ArgumentError
    end
  end
end

module BookKeeping
  VERSION = 1
end

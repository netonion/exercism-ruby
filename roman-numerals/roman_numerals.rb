class Integer

  RULES =
    {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
      100 => "C",  90 => "XC",  50 => "L",  40 => "XL",
       10 => "X",   9 => "IX",   5 => "V",   4 => "IV",
        1 => "I"};


  def to_roman
    roman = ''
    this = self
    RULES.each do |key, letter|
      while this >= key
        roman << letter
        this -= key
      end
    end
    roman
  end
end

module BookKeeping
  VERSION = 2
end

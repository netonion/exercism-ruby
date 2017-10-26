module OcrNumbers

  DICT = {
    " _ \n| |\n|_|\n   " => '0',
    "   \n  |\n  |\n   " => '1',
    " _ \n _|\n|_ \n   " => '2',
    " _ \n _|\n _|\n   " => '3',
    "   \n|_|\n  |\n   " => '4',
    " _ \n|_ \n _|\n   " => '5',
    " _ \n|_ \n|_|\n   " => '6',
    " _ \n  |\n  |\n   " => '7',
    " _ \n|_|\n|_|\n   " => '8',
    " _ \n|_|\n _|\n   " => '9',
  }
  DICT.default = '?'

  def self.convert(ocr)
    lines = ocr.split("\n")
    raise ArgumentError if lines.size % 4 != 0 || lines.any? { |l| l.size % 3 != 0 }
    lines.each_slice(4).map do |row|
      row.map { |l| l.chars.each_slice(3).map(&:join) }.transpose.map { |e| DICT[e.join "\n"] }
    end.map(&:join).join(",")
  end
end

module BookKeeping
  VERSION = 1
end

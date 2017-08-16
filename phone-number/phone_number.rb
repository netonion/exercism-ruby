module PhoneNumber
  def self.clean(num)
    cleaned = num.tr('^0-9', '')
    cleaned.match(/^1?([2-9]\d{2}[2-9]\d{6})$/) ? $1 : nil
  end
end

module BookKeeping
  VERSION = 2
end

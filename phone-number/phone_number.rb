module PhoneNumber
  def self.clean(num)
    cleaned = num.tr('^0-9', '')
    cleaned = cleaned[1..-1] if cleaned.size == 11 && cleaned.start_with?('1')
    cleaned.size == 10 && ('2'..'9').cover?(cleaned[0]) && ('2'..'9').cover?(cleaned[3]) ? cleaned : nil
  end
end

module BookKeeping
  VERSION = 2
end

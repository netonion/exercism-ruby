module Bob
  def self.hey(remark)
    case
    when remark.strip.empty?
      'Fine. Be that way!'
    when !remark.count('A-Z').zero? && remark.count('a-z').zero?
      'Whoa, chill out!'
    when remark.strip.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end
end

module BookKeeping
  VERSION = 1
end

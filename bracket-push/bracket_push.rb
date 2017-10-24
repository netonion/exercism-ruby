module Brackets
  def self.paired?(brackets)
    brackets.chars.each_with_object([]) do |ch, stack|
      case ch
      when '['
        stack.push ']'
      when '{'
        stack.push '}'
      when '('
        stack.push ')'
      when ']', '}', ')'
        return false if stack.pop != ch
      end
    end.empty?
  end
end

module BookKeeping
  VERSION = 4
end

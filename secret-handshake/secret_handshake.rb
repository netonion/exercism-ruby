class SecretHandshake
  ACTIONS = ["wink", "double blink", "close your eyes", "jump"]
  attr_reader :commands
  def initialize(code)
    @commands = code.is_a?(Integer) ? ACTIONS.values_at(*(0...ACTIONS.size).select { |i| code & (1 << i) > 0 }).tap { |e| e.reverse! if code & 16 > 0 } : []
  end
end

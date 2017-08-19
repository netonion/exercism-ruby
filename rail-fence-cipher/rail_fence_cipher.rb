module RailFenceCipher

  VERSION = 1

  def self.encode(msg, n)
    rails = Array.new(n) { [] }
    j = 0
    (0.upto(n - 1).to_a + (n - 2).downto(1).to_a).cycle do |i|
      rails[i] << msg[j]
      j += 1
      break if j >= msg.size
    end
    rails.join
  end

  def self.decode(msg, n)
    return '' if msg.empty?

    chars = msg.chars
    cycle_size = [(n - 1) * 2, 1].max
    rails = []

    n.times.each do |i|
      case i
      when 0
        rails << chars.shift((msg.size.fdiv(cycle_size)).ceil)
      when n - 1
        rails << chars
      else
        size = 2 * (msg.size / cycle_size) + case msg.size % cycle_size
          when 0...(i + 1)
            0
          when (i + 1)...(cycle_size - i + 1)
            1
          else
            2
          end
        rails << chars.shift(size)
      end
    end

    plain = ''
    (0.upto(n - 1).to_a + (n - 2).downto(1).to_a).cycle do |i|
      plain << rails[i].shift
      break if plain.size >= msg.size
    end

    plain
  end
end

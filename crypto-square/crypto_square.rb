class Crypto
  def initialize(msg)
    @msg = msg
  end

  def normalize_plaintext
    @msg.downcase.gsub(/\W/, '')
  end

  def size
    Math.sqrt(normalize_plaintext.size).ceil
  end

  def plaintext_segments
    char_matrix.map(&:join)
  end

  def ciphertext
    char_matrix.transpose.join
  end

  def normalize_ciphertext
    char_matrix.transpose.map(&:join).join(' ')
  end

  private

  def char_matrix
    normalize_plaintext.chars.each_slice(size).to_a.tap do |segments|
      last = segments.last
      last.fill('', last.size...size) if last.size < size
    end
  end
end

module Atbash

  REV_ALPHA = ('a'..'z').to_a.reverse.join

  def self.encode(text)
    text.downcase.delete('^a-z0-9').tr('a-z', REV_ALPHA).gsub(/(.{5})/, '\1 ').rstrip
  end
end

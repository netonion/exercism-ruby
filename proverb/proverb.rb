class Proverb
  def initialize(*chain, qualifier: nil)
    last = qualifier ? "#{qualifier} #{chain.first}" : chain.first
    @proverb = chain.each_cons(2).inject('') { |mem, (a, b)| mem + "For want of a #{a} the #{b} was lost.\n" } + "And all for the want of a #{last}."
  end

  def to_s
    @proverb
  end
end

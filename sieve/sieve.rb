class Sieve

  attr_reader :primes

  def initialize(n)
    @primes = sieve((2..n).to_a)
  end

  private

  def sieve(arr)
    arr.empty? ? arr : [arr[0], *sieve(arr.drop(1).reject { |e| e % arr[0] == 0 })]
  end
end

module BookKeeping
  VERSION = 1
end

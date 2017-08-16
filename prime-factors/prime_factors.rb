module PrimeFactors
  def self.for(n)
    factors = []
    prime = 2
    while n > 1
      while n % prime == 0
        factors << prime
        n /= prime
      end
      prime += 1
    end
    factors
  end
end

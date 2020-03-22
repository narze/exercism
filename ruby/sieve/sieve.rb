class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    candidates = (2..@num).to_a

    candidates.each do |n|
      i = n

      while i <= @num
        i += n
        candidates.delete(i)
      end
    end
  end
end

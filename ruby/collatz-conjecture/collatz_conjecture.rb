class CollatzConjecture
  def self.steps(num)
    raise ArgumentError if num < 1

    count = 0

    while num > 1
      count += 1

      if num.even?
        num /= 2
      else
        num = 3 * num + 1
      end
    end

    count
  end
end

class CollatzConjecture
  def self.steps(num)
    case
    when num < 1
      raise ArgumentError
    when num == 1
      0
    when num.even?
      1 + steps(num / 2)
    else
      1 + steps(3 * num + 1)
    end
  end
end

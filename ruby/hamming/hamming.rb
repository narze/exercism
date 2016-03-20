class Hamming
  VERSION = 1

  def self.compute(a, b)
    raise ArgumentError if a.length != length = b.length

    length.times.to_a.count { |i| a[i] != b[i] }
  end
end

class Binary
  def self.to_decimal(str)
    str.reverse.chars.map.with_index do |c, i|
      raise ArgumentError if c != '0' && c != '1'

      c.to_i * (2 ** i)
    end.sum
  end
end

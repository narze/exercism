require 'ostruct'
require 'set'

class Palindromes
  def initialize(max_factor:, min_factor: 1)
    @max_factor = max_factor
    @min_factor = min_factor
    @palindromes = {}
  end

  def generate
    range = (@min_factor..@max_factor).to_a
    data = {}

    range.product(range).each do |pair|
      product = pair.inject(:*)

      if palindrome?(product)
        data[product] ||= Set[]
        data[product] << pair.sort
      end
    end
    @palindromes = data.sort_by { |k, _| k }.to_h
  end

  def smallest
    @value = @palindromes.keys.first
    @factors = @palindromes.values.first.to_a

    OpenStruct.new(value: @value, factors: @factors)
  end

  def largest
    @value = @palindromes.keys.last
    @factors = @palindromes.values.last.to_a

    OpenStruct.new(value: @value, factors: @factors)
  end

  def palindrome?(val)
    val.to_s.reverse == val.to_s
  end
end

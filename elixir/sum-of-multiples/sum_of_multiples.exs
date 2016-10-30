defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    Enum.reduce factors, 0, fn (factor, acc) ->
      IO.puts factor
      times = div(limit - 1, factor)
      acc + Enum.reduce 0..times, 0, fn (x, accb) -> accb + x * factor end
    end
  end
end

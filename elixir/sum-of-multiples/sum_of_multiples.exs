defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    all_factors = Enum.flat_map factors, fn (factor) ->
      times = div(limit - 1, factor)
      Enum.map 0..times, fn (x) -> x * factor end
    end
    all_factors
      |> Enum.uniq
      |> Enum.sum
  end
end

defmodule Prime do

  @doc """
  Generates the nth prime.
  """
  @spec nth(non_neg_integer) :: non_neg_integer
  def nth(0), do: raise('Error')
  def nth(1), do: 2
  def nth(count) do
    from = nth(count-1) + 1
    next = Stream.iterate(from, &(&1+1))
    |> Stream.drop_while(&( has_factor?(&1) ))
    |> Stream.take(1)
    |> Enum.to_list()
    |> List.first()
  end

  def has_factor?(x) do
    factors = 2..x-1
    |> Stream.drop_while(&( non_factor?(x, &1) ))
    |> Stream.take(1)
    |> Enum.to_list()
    length(factors) === 1
  end

  def non_factor?(x, y) do
    rem(x, y) !== 0
  end

end

defmodule ListOps do
  # Please don't use any external modules (especially List) in your
  # implementation. The point of this exercise is to create these basic functions
  # yourself.
  #
  # Note that `++` is a function from an external module (Kernel, which is
  # automatically imported) and so shouldn't be used either.

  @spec count(list) :: non_neg_integer
  def count([]), do: 0
  def count([h | t]) do
    1 + count(t)
  end

  @spec reverse(list) :: list
  def reverse(l), do: do_reverse(l, [])
  defp do_reverse([], reversed), do: reversed
  defp do_reverse([h | t], acc) do
    do_reverse(t, [h | acc])
  end

  @spec map(list, (any -> any)) :: list
  def map([], _), do: []
  def map([h | t], f) do
    [f.(h) | map(t, f)]
  end

  @spec filter(list, (any -> as_boolean(term))) :: list
  def filter([], _), do: []
  def filter([h | t], f) do
    case f.(h) do
      true -> [h | filter(t, f)]
      false -> filter(t, f)
    end
  end

  @type acc :: any
  @spec reduce(list, acc, ((any, acc) -> acc)) :: acc
  def reduce([], acc, _), do: acc
  def reduce([h | t], acc, f) do
    reduce(t, f.(h, acc), f)
  end

  # Not optimal & slow
  @spec append(list, list) :: list
  def append([], []), do: []
  def append([], l), do: l
  def append(l, []), do: l
  def append([h | t], b) do
    [h | append(t, b)]
  end

  @spec concat([[any]]) :: [any]
  def concat([]), do: []
  def concat([hl | tl]) do
    append(hl, concat(tl))
  end
end

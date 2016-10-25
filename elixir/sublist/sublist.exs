defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    cond do
      a === b -> :equal
      is_sublist(a, b) -> :sublist
      is_sublist(b, a) -> :superlist
      true -> :unequal
    end
  end

  def is_sublist(a, b) do
    cond do
      length(a) > length(b) ->
        false
      Enum.at(a, 0) === Enum.at(b, 0) ->
        cond do
          a === Enum.slice(b, 0..length(a)-1) -> true
          true -> is_sublist(a, Enum.slice(b, 1..-1))
        end
      true ->
        is_sublist(a, Enum.slice(b, 1..-1))
    end
  end
end

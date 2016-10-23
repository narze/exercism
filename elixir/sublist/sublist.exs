defmodule Sublist do
  @doc """
  Returns whether the first list is a sublist or a superlist of the second list
  and if not whether it is equal or unequal to the second list.
  """
  def compare(a, b) do
    cond do
      a == b -> :equal
      a == [] -> :sublist
      b == [] -> :superlist
      true ->
        cond do
          Enum.at(a, 0) == Enum.at(b, 0) ->
            compare(Enum.slice(a, 1..-1), Enum.slice(b, 1..-1))
          length(b) == 1 ->
            :unequal
          true ->
            compare(a, Enum.slice(b, 1..-1) ++ [Enum.at(b, 0)])
        end
    end
  end
end

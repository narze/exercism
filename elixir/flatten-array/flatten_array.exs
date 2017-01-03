defmodule FlattenArray do
  @doc """
    Accept a list and return the list flattened without nil values.

    ## Examples

      iex> FlattenArray.flatten([1, [2], 3, nil])
      [1,2,3]

      iex> FlattenArray.flatten([nil, nil])
      []

  """

  @spec flatten(list) :: list
  def flatten(list) do
    do_flatten(list, [])
  end

  defp do_flatten([], acc), do: acc
  defp do_flatten(list, acc) do
    [hd | tl] = list
    cond do
      is_list(hd) -> do_flatten(hd ++ tl, acc)
      is_nil(hd) -> do_flatten(tl, acc)
      true -> do_flatten(tl, acc ++ [hd])
    end
  end
end

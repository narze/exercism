defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    Regex.replace(~r/[^\w\s\d-]/u, sentence, "")
    |> String.downcase
    |> String.split(~r{[_ ]}, trim: true)
    |> Enum.reduce(%{}, fn(word, result) ->
      Map.update(result, word, 1, &(&1 + 1))
    end)
  end
end

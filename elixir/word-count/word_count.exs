defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    words = String.split(sentence)
    Enum.reduce(words, %{}, fn(word, result) ->
      Map.put(result, word, 1)
    end)
  end
end

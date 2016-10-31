defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do
    results = Enum.filter candidates, fn(candidate) ->
      Enum.sort(to_charlist(String.downcase(candidate))) === Enum.sort(to_charlist(String.downcase(base)))
    end
    Enum.reject results, fn(result) -> String.downcase(result) === String.downcase(base) end
  end
end

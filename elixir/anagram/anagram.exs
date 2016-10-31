defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t, [String.t]) :: [String.t]
  def match(base, candidates) do
    candidates
      |> Enum.filter(fn(c) ->
        Enum.sort(to_charlist(String.downcase(c))) === Enum.sort(to_charlist(String.downcase(base)))
      end)
      |> Enum.reject(fn(result) ->
        String.downcase(result) === String.downcase(base)
      end)
  end
end

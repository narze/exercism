defmodule Isogram do
  @doc """
  Determines if a word or sentence is an isogram
  """
  @spec isogram?(String.t) :: boolean
  def isogram?(sentence) do
    Regex.replace(~r/\W/u, sentence, "")
    |> do_isogram
  end

  def do_isogram(letters) do
    String.length(letters) == letters
    |> String.codepoints
    |> Enum.uniq
    |> length
  end
end
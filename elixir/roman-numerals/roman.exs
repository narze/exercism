defmodule Roman do
  @doc """
  Convert the number to a roman number.
  """
  @spec numerals(pos_integer) :: String.t
  def numerals(n) do
    cond do
      n >= 1000 ->
        "M" <> numerals(n - 1000)
      n >= 900 ->
        "CM" <> numerals(n - 900)
      n >= 500 ->
        "D" <> numerals(n - 500)
      n >= 400 ->
        "CD" <> numerals(n - 400)
      n >= 100 ->
        "C" <> numerals(n - 100)
      n >= 90 ->
        "XC" <> numerals(n - 90)
      n >= 50 ->
        "L" <> numerals(n - 50)
      n >= 40 ->
        "XL" <> numerals(n - 40)
      n >= 10 ->
        "X" <> numerals(n - 10)
      n == 9 ->
        "IX" <> numerals(n - 9)
      n >= 5 ->
        "V" <> numerals(n - 5)
      n == 4 ->
        "IV" <> numerals(n - 4)
      n >= 1 ->
        "I" <> numerals(n - 1)
      true ->
        ""
    end
  end
end

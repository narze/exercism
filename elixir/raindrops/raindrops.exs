defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(number) do
    pling = if rem(number, 3) == 0 do
      "Pling"
    else
      ""
    end

    plang = if rem(number, 5) == 0 do
      "Plang"
    else
      ""
    end

    plong = if rem(number, 7) == 0 do
      "Plong"
    else
      ""
    end

    result = pling <> plang <> plong

    if String.length(result) == 0 do
      to_string number
    else
      result
    end
  end
end

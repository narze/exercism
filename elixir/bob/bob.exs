defmodule Bob do
  def hey(input) do
    cond do
      String.trim(input) == "" -> "Fine. Be that way!"
      String.last(input) == "?" -> "Sure."
      !Regex.match?(~r/[a-zA-Z]/, input) &&
        Regex.match?(~r/[0-9]/, input) -> "Whatever."
      String.upcase(input) == input -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end

defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t
  def encode(string) do
    if string == "" do
      ""
    else
      head = String.first(string)
      rest = String.slice(string, 1..-1)

      encode(rest, head, 1)
    end
  end

  @spec encode(String.t, String.t, Integer.t) :: String.t
  def encode(string, char, count) do
    if string == "" do
      to_string(count) <> char
    else
      head = String.first(string)
      rest = String.slice(string, 1..-1)
      if char == head do
        encode(rest, char, count + 1)
      else
        to_string(count) <> char <> encode(rest, head, 1)
      end
    end
  end

  @spec decode(String.t) :: String.t
  def decode(string) do
    if string == "" do
      ""
    end
  end
end

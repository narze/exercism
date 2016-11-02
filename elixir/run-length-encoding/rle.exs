defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t
  def encode(""), do: ""
  def encode(string) do
    { head, rest } = head_tail(string)

    encode(rest, head, 1)
  end

  @spec encode(String.t, String.t, Integer.t) :: String.t
  def encode("", char, count), do: to_string(count) <> char
  def encode(string, char, count) do
    { head, rest } = head_tail(string)

    if char == head do
      encode(rest, char, count + 1)
    else
      to_string(count) <> char <> encode(rest, head, 1)
    end
  end

  @spec decode(String.t) :: String.t
  def decode(""), do: ""
  def decode(string) do
    result = Regex.named_captures(~r/(?<count>\d+)(?<char>.)/, string)
    count = String.to_integer(result["count"])
    length = String.length(result["char"] <> result["count"])

    String.duplicate(result["char"], count) <> decode(String.slice(string, length..-1))
  end

  defp head_tail(string) do
    String.split_at string, 1
  end
end

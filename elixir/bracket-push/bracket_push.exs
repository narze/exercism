defmodule BracketPush do
  @pairs %{
    "{" => "}",
    "[" => "]",
    "(" => ")"
  }

  @doc """
  Checks that all the brackets and braces in the string are matched correctly, and nested correctly
  """
  @spec check_brackets(String.t) :: boolean
  def check_brackets(str) do
    do_check_brackets(Regex.replace(~r/[^\{\}\(\)\[\]]/, str, ""))
  end

  defp do_check_brackets(""), do: true
  defp do_check_brackets(str) do
    close = @pairs[String.first(str)]
    cond do
      String.at(str, 1) === close ->
        do_check_brackets(String.slice(str, 2..-1))
      String.at(str, -1) === close ->
        do_check_brackets(String.slice(str, 1..-2))
      true -> false
    end
  end
end

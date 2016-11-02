defmodule BracketPush do
  @doc """
  Checks that all the brackets and braces in the string are matched correctly, and nested correctly
  """
  @spec check_brackets(String.t) :: boolean
  def check_brackets(str) do
    check_only_brackets(Regex.replace(~r/[^\{\}\(\)\[\]]/, str, ""))
  end

  defp check_only_brackets(""), do: true
  defp check_only_brackets(str) do
    next = Regex.replace(~r/(\{\}|\(\)|\[\])/, str, "")
    cond do
      next === str -> false
      true -> check_only_brackets(next)
    end
  end
end

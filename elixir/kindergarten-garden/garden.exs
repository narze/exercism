defmodule Garden do
  @names [
    :alice,
    :bob,
    :charlie,
    :david,
    :eve,
    :fred,
    :ginny,
    :harriet,
    :ileana,
    :joseph,
    :kincaid,
    :larry
  ]

  @plants %{
    "C" => :clover,
    "G" => :grass,
    "R" => :radishes,
    "V" => :violets,
  }

  @doc """
    Accepts a string representing the arrangement of cups on a windowsill and a
    list with names of students in the class. The student names list does not
    have to be in alphabetical order.

    It decodes that string into the various gardens for each student and returns
    that information in a map.
  """

  @spec info(String.t(), list) :: map
  def info(info_string, student_names \\ @names) do
    [front, back] = String.splitter(info_string, "\n") |> Enum.take(2)

    student_names
    |> Enum.sort
    |> Enum.with_index
    |> Enum.map(fn {name, index} ->
      f = front |> String.slice(index*2, 2)
      b = back |> String.slice(index*2, 2)
      {name, translate(f <> b)}
    end)
    |> Enum.into(%{})
  end

  def translate(info) do
    info
    |> String.codepoints
    |> Enum.map(&(@plants[&1]))
    |> List.to_tuple
  end
end

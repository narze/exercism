defmodule School do
  @moduledoc """
  Simulate students in a school.

  Each student is in a grade.
  """

  @doc """
  Add a student to a particular grade in school.
  """
  @spec add(map, String.t, integer) :: map
  def add(db, name, grade) do
    students = grade(db, grade)

    Map.put db, grade, [name | students]
  end

  @doc """
  Return the names of the students in a particular grade.
  """
  @spec grade(map, integer) :: [String.t]
  def grade(db, grade) do
    if Map.has_key?(db, grade) do
      db[grade]
    else
      []
    end
  end

  @doc """
  Sorts the school by grade and name.
  """
  @spec sort(map) :: [{integer, [String.t]}]
  def sort(db) do
    db
    |> Enum.sort
    |> Enum.map(fn {grade, students} -> {grade, Enum.sort(students)} end)
  end
end

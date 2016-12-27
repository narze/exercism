defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t
  def verse(number) do
    """
    #{bottles(number-1) |> String.capitalize} of beer on the wall, #{bottles(number-1)} of beer.
    #{take_or_buy(number-1)}, #{bottles(number-2)} of beer on the wall.
    """
  end

  def bottles(0), do: "no more bottles"
  def bottles(1), do: "1 bottle"
  def bottles(-1), do: bottles(99)
  def bottles(number), do: "#{number} bottles"

  def take_or_buy(0), do: "Go to the store and buy some more"
  def take_or_buy(number), do: "Take #{taken(number)} down and pass it around"

  def taken(1), do: "it"
  def taken(_), do: "one"

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t) :: String.t
  def lyrics(range \\ 100..1) do
    range
    |> Enum.map_join("\n", &(verse(&1)))
  end
end

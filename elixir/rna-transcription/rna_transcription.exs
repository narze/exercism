defmodule RNATranscription do
  @dna_pairs %{ "G" => "C", "C" => "G", "T" => "A", "A" => "U" }
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> to_string
    |> do_to_rna
    |> to_charlist
  end

  defp do_to_rna(""), do: ""
  defp do_to_rna(dna_string) do
    { h, t } = String.split_at(dna_string, 1)
    @dna_pairs[h] <> do_to_rna(t)
  end
end

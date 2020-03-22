class Complement
  PAIRS = {
    '' => '',
    'A' => 'U',
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
  }

  def self.of_dna(str)
    str.chars.map { |s| PAIRS[s] }.join
  end
end

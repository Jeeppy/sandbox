class InvalidCodonError < ArgumentError
end

class Translation
  PROTEINS = {
    'Methionine' => ['AUG'],
    'Phenylalanine' => %w[UUU UUC],
    'Leucine' => %w[UUA UUG],
    'Serine' => %w[UCU UCC UCA UCG],
    'Tyrosine' => %w[UAU UAC],
    'Cysteine' => %w[UGU UGC],
    'Tryptophan' => ['UGG'],
    'Stop' => %w[UAA UAG UGA]
  }

  def self.of_rna(strand)
    codons = strand.chars.each_slice(3).map(&:join)
    rna = []
    codons.each do |codon|
      proteins = to_proteins(codon)
      raise InvalidCodonError if proteins.nil?
      return rna if proteins == 'Stop'

      rna << proteins
    end

    rna
  end

  def self.to_proteins(codon)
    PROTEINS.map { |k, v| v.map { |value| { value => k } } }.flatten.reduce({}, :merge)[codon]
  end
end

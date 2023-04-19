# frozen_string_literal: true

class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(value)
    return '' if value.length.zero?

    value.chars.map { |c| DNA_TO_RNA[c] }.join
  end
end

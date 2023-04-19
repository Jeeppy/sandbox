class Isogram
  def self.isogram?(input)
    input.tr!('-', '')
    input.tr!(' ', '')
    input.downcase.chars == input.downcase.chars.uniq
  end
end

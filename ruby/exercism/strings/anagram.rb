class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(list)
    list.select do |element|
      compare?(element.downcase)
    end
  end

  def compare?(other)
    return false if same?(other)

    @word.chars.sort == other.chars.sort
  end

  def same?(other)
    @word.downcase == other.downcase
  end
end

class Pangram
  def self.pangram?(sentence)
    sentence.gsub!(/[^a-zA-Z]/, '')
    sentence.downcase.chars.uniq.sort == ('a'..'z').to_a
  end
end

class Cipher
  attr_accessor :key

  def initialize(key = 'aaaaaaaaaa')
    raise ArgumentError if key.empty? || key == key.upcase

    @key = key
  end

  def alpha
    ('a'..'z').to_a
  end

  def encode(value)
    value.chars.map.with_index do |char, index|
      alpha[(alpha.index(char) + alpha.index(@key[index % @key.length])) % 26]
    end.join
  end

  def decode(value)
    value.chars.map.with_index do |char, index|
      alpha[(alpha.index(char) - alpha.index(@key[index % @key.length])) % 26]
    end.join
  end
end

class Hamming
  def self.compute(first, second)
    raise ArgumentError if first.length != second.length

    count = 0
    first.length.times do |i|
      count += 1 if first[i] != second[i]
    end

    count
  end
end

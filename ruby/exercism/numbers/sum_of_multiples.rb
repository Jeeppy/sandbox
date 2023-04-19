class SumOfMultiples
  def initialize(*args)
    @numbers = args
  end

  def to(range)
    (1..range - 1).select { |i| is_multiple?(i) }.sum
  end

  def is_multiple?(multiple)
    @numbers.any? { |i| (multiple % i).zero? }
  end
end

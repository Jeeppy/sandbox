class Triangle
  def initialize(sizes)
    @a, @b, @c = sizes
  end

  def triangle?
    return false unless @a.positive? && @b.positive? && @c.positive?

    @a <= (@b + @c) && @b <= (@a + @c) && @c <= (@a + @b)
  end

  def equilateral?
    return false unless triangle?

    (@a == @b) && (@b == @c)
  end

  def isosceles?
    return false unless triangle?

    (@a == @b) || (@a == @c) || (@c == @b)
  end

  def scalene?
    return false unless triangle?

    (@a != @b) && (@a != @c) && (@b != @c)
  end
end

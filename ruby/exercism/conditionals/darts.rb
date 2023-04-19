class Darts
  OUTER_RADIUS = 10
  MIDDLE_RADIUS = 5
  INNER_RADIUS = 1

  INNER_SCORE = 10
  MIDDLE_SCORE = 5
  OUTER_SCORE = 1
  OUT_SCORE = 0

  def initialize(x, y)
    @distance = Math.sqrt(x**2 + y**2)
  end

  def score
    if in?(INNER_RADIUS)
      INNER_SCORE
    elsif in?(MIDDLE_RADIUS)
      MIDDLE_SCORE
    elsif in?(OUTER_RADIUS)
      OUTER_SCORE
    else
      OUT_SCORE
    end
  end

  def in?(circle_radius)
    @distance <= circle_radius
  end
end

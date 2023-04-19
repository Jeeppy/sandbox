class Matrix
  def initialize(matrix)
    @matrix = matrix.split("\n").map { |element| element.split.map { |number| number.to_i } }
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end
end

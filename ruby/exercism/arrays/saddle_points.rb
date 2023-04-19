class Matrix
  def initialize(matrix)
    @matrix = matrix.split("\n").map { |line| line.split(' ').map(&:to_i) }
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end

  def saddle_points
    points = []
    @matrix.each_with_index do |line, x|
      max_line = line.max
      line.each_with_index do |value, y|
        min_column = columns[y].min

        points.append([x, y]) if value == max_line && value == min_column
      end
    end

    points
  end
end

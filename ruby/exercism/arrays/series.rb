class Series
  def initialize(value)
    @serie = value
  end

  def slices(size)
    raise ArgumentError if @serie.length < size || size < 1

    length = @serie.length - size + 1
    result = []

    length.times do |i|
      position = i + size - 1
      result << @serie[i..position]
    end

    result
  end
end

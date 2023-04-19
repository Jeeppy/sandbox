class Raindrops
  def self.convert(value)
    result = ''
    result += 'Pling' if factor3?(value)
    result += 'Plang' if factor5?(value)
    result += 'Plong' if factor7?(value)
    result += value.to_s if result.empty?

    result
  end

  def self.factor3?(value)
    value % 3 == 0
  end

  def self.factor5?(value)
    value % 5 == 0
  end

  def self.factor7?(value)
    value % 7 == 0
  end
end

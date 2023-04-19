class Transpose
  def self.transpose(input)
    return '' if input.empty?

    splitted = input.gsub(' ', '_').split("\n")
    length = splitted.compact.map(&:length).max

    (0..length - 1).map do |i|
      splitted.map do |word|
        word[i] or ' '
      end.join.rstrip
    end.join("\n").gsub('_', ' ')
  end
end

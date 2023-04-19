# frozen_string_literal: true

class Diamond
  def self.make_diamond(value)
    @size = (value.upcase.ord - 64) * 2 - 1
    @middle = @size / 2 + 1

    diamond = ''

    @size.times do |i|
      line = ' ' * @size
      debug "i: #{i} - inc : #{increment(i)}"
      line[@middle - increment(i) - 1] = letter(i)
      line[@middle + increment(i) - 1] = letter(i)
      line += "\n"

      diamond += line
    end

    diamond
  end

  def self.letter(position)
    (65 + increment(position)).chr
  end

  def self.increment(position)
    if after_middle?(position)
      @size - position - 1
    else
      position
    end
  end

  def self.after_middle?(position)
    @middle <= position
  end
end

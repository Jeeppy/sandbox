class BaseConverter
  def self.convert(input, digits, output)
    raise ArgumentError if input <= 1
    raise ArgumentError if digits.select(&:negative?).any?
    raise ArgumentError if digits.select { |i| i >= input }.any?

    length = digits.length - 1
    to_base_10 = (digits.map.with_index do |value, i|
                    value * input**(length - i)
                  end).sum

    base10_to(to_base_10, output)
  end

  def self.base10_to(number, base)
    if base <= 36
      number.to_s(base).chars.map { |number| number.to_i(base) }
    else
      array = []
      while number != 0
        number, rest = number.divmod(base)
        array << rest
      end
      array.reverse
    end
  end
end

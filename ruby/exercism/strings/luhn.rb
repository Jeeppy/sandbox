class Luhn
  class << self
    def valid?(number)
      number.gsub!(/ /, '')
      return false if number.length <= 1
      return false unless number.scan(/\D/).empty?

      get_checksum(number).zero?
    end

    def get_checksum(number)
      sum_of_digits(number) % 10
    end

    def sum_of_digits(number)
      get_digits(number).inject(:+)
    end

    def get_digits(number)
      number = number_to_array(number)
      number.reverse.map.with_index do |element, i|
        if i.odd?
          new_value = element * 2
          new_value > 9 ? new_value - 9 : new_value
        else
          element
        end
      end
    end

    def number_to_array(number)
      number.to_s.split(//).map(&:to_i)
    end

    def is_numeric?(number)
      true if Integer(number)
    rescue StandardError
      false
    end
  end
end

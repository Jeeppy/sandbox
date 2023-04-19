class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first, second, operator)
    raise ArgumentError unless first.is_a? Numeric
    raise ArgumentError unless second.is_a? Numeric
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operator

    if operator == '/'
      return 'Division by zero is not allowed.' if second.zero?

      result = first / second
    elsif operator == '*'
      result = first * second
    elsif operator == '+'
      result = first + second
    end

    "#{first} #{operator} #{second} = #{result}"
  end
end

# Calculator class
class Calculator
  attr_reader :num1, :num2

  def initialize(num1, num2)
    @num1 = num1.to_f
    @num2 = num2.to_f
  end

  def add(num1, num2)
    num1.to_f + num2.to_f
  end

  def subtract(num1, num2)
    num1.to_f - num2.to_f
  end

  def multiply(num1, num2)
    num1.to_f * num2.to_f
  end

  def divide(num1, num2)
    num1.to_f / num2.to_f
  end
end

if __FILE__ == $PROGRAM_NAME
  calc = Calculator.new(5, 3)
  puts calc.add(5, 3)
end

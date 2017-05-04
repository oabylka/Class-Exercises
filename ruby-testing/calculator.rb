require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end


# Rspec test for add:

RSpec.describe Calculator do
  describe "#add" do

    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1,2)).to eq(3)
    end

  end
end


# Rspec test for subtract

RSpec.describe Calculator do
	describe "#subtract" do

		it 'should subtract second number from the first' do
			calculator = Calculator.new
			expect(calculator.subtract(5,4)).to eq(1)
		end
	end
end

# Rspec test for multiply

RSpec.describe Calculator do
	describe "#multiply" do

		it 'should multiply two numbers' do 
			calculator = Calculator.new
			expect(calculator.multiply(5,10)).to eq(50)
		end
	end
end

# Rspec test for divide

RSpec.describe Calculator do
	describe "#divide" do

		it 'should divide the first number by the second number' do
			calculator = Calculator.new
			expect(calculator.divide(20,4)).to eq(5)
		end
	end
end


# Rspec test for sqaure

RSpec.describe Calculator do
	describe "#sqaure" do

		it 'should return the square of a number' do
			calculator = Calculator.new
			expect(calculator.sqaure(3)).to eq(9)
		end
	end
end


# Rspec test for power

RSpec.describe Calculator do
	describe "#power" do

		it 'should return the exponential value of the first number by the second number' do
			calculator = Calculator.new
			expect(calculator.power(2,3)).to eq(8)
		end
	end
end







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

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def squareroot(number, exponent)
    return (number.to_f ** (1/exponent.to_f))
  end

  def percent(number_one, number_two)
    return (number_one.to_f/number_two.to_f * 100)
  end
  def inverse(number)
    return (1/number.to_f)
  end
end

calculator1 = Calculator.new

puts "Testing the adding method"
if calculator1.add(1,2) == 3 
  puts "Passed the test!"
else 
  puts "Failed the test!"
end

RSpec.describe Calculator do 
  describe '#add' do
    it 'should return the sum of two numbers' do 
      calculator1 = Calculator.new
      expect(calculator1.add(1,2)).to eq(3)
    end
  end
  describe '#add' do
    it 'should return the sum of two numbers' do 
      calculator1 = Calculator.new
      expect(calculator1.add(1,2)).to eq(3)
    end
  end
  describe '#subtract' do
    it 'should return the difference of two numbers' do 
      calculator1 = Calculator.new
      expect(calculator1.subtract(1,2)).to eq(-1)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do 
      calculator1 = Calculator.new
      expect(calculator1.multiply(3,4)).to eq(12)
    end
  end
  describe '#divide' do
    it 'should return the quotient of two numbers' do 
      calculator1 = Calculator.new
      expect(calculator1.divide(12,4)).to eq(3)
    end
  end
  describe '#square' do
    it 'should return the square of a number' do 
      calculator1 = Calculator.new
      expect(calculator1.square(5)).to eq(25)
    end
  end
  describe '#power' do
    it 'should return the square of a number' do 
      calculator1 = Calculator.new
      expect(calculator1.power(5,2)).to eq(25)
    end
  end
  describe '#squareroot' do
    it 'should return the square root of two numbers' do 
      calculator1 = Calculator.new
      expect(calculator1.squareroot(25,2)).to eq(5)
    end
  end
  describe '#percent' do
    it 'should return the percentage of two numbers' do 
      calculator1 = Calculator.new
      expect(calculator1.percent(5,8)).to eq(62.5)
    end
  end
  describe '#inverse' do
    it 'should return the inverse of a number' do 
      calculator1 = Calculator.new
      expect(calculator1.inverse(5)).to eq(0.2)
    end
  end
end



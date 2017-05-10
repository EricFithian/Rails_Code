require 'rspec'

class Number
  def roman(number)
    array = [1000, 500, 100, 50, 10, 5, 1]
    if 

# class Number
#   def roman(number)
#     roman_num = ''
#     if number >= 50
#       fifties = number / 50
#       remainder = number % 50
#       fifties.times do
#         roman_num += 'L'
#       end
#       number = number - fifties * 50
#       tens = number / 10
#       remainder = number % 10
#       tens.times do
#         roman_num += 'X'
#       end
#       number = number - tens * 10
#       fives = number / 5
#       remainder = number % 5
#       fives.times do
#         roman_num += 'V'
#       end
#       remainder.times do
#         roman_num += 'I'
#       end
#       return roman_num
#     elsif number >= 10
#       tens = number / 10
#       remainder = number % 10
#       tens.times do
#         roman_num += 'X'
#       end
#       number = number - tens * 10
#       fives = number / 5
#       remainder = number % 5
#       fives.times do
#         roman_num += 'V'
#       end
#       remainder.times do
#         roman_num += 'I'
#       end
#       return roman_num
#     elsif number >= 5
#       fives = number / 5
#       remainder = number % 5
#       fives.times do
#         roman_num += 'V'
#       end
#       remainder.times do
#         roman_num += 'I'
#       end
#       return roman_num
#     end
#     else number.times do 
#       roman_num += 'I'
#     end
#     return roman_num
#   end
# end

RSpec.describe Number do
  describe '#roman' do
    it 'should return "I" when given 1' do
      number = Number.new
      expect(number.roman(1)).to eq('I')
    end
    it 'should return "II" when given 2' do
      number = Number.new
      expect(number.roman(2)).to eq('II')
    end
    it 'should return "V" when given 5' do
      number = Number.new
      expect(number.roman(5)).to eq('V')
    end
    it 'should return "VIII" when given 8' do
      number = Number.new
      expect(number.roman(8)).to eq('VIII')
    end
    it 'should return "X" when given 10' do
      number = Number.new
      expect(number.roman(10)).to eq('X')
    end    
    it 'should return "XVII" when given 17' do
      number = Number.new
      expect(number.roman(17)).to eq('XVII')
    end 
    it 'should return "LXVII" when given 67' do
      number = Number.new
      expect(number.roman(67)).to eq('LXVII')
    end 
  end
end
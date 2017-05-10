require 'rspec'

class ChangeMachine
  def change(number)
    changeArray = []
    if number >= 25
      quarters = number / 25
      number = number - quarters * 25
      quarters.times do
        changeArray.push(25)
      end
      dimes = number / 10
      number = number - dimes * 10
      dimes.times do
        changeArray.push(10)
      end
      nickels = number / 5
      remainder = number % 5
      nickels.times do
        changeArray.push(5)
      end
      remainder.times do
        changeArray.push(1)
      end
      return changeArray
    elsif number >= 10
      dimes = number / 10
      number = number - dimes * 10
      dimes.times do
        changeArray.push(10)
      end
      nickels = number / 5
      remainder = number % 5
      nickels.times do
        changeArray.push(5)
      end
      remainder.times do
        changeArray.push(1)
      end
      return changeArray
    elsif number >= 5
      nickels = number / 5
      remainder = number % 5
      nickels.times do
        changeArray.push(5)
      end
      remainder.times do
        changeArray.push(1)
      end
      return changeArray
    elsif number > 0
      number.times do 
        changeArray.push(1)
      end
      return changeArray
    end
  else
    return "You're fucking broke as shit"
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it 'should return [1, 1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end
    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end
    it 'should return [5, 1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end
    it 'should return [5, 1, 1, 1, 1] when given 9' do
      machine = ChangeMachine.new
      expect(machine.change(9)).to eq([5, 1, 1, 1, 1])
    end
    it 'should return [10, 5, 1] when given 16' do
      machine = ChangeMachine.new
      expect(machine.change(16)).to eq([10, 5, 1])
    end
    it 'should return [25, 10, 5, 1] when given 41' do
      machine = ChangeMachine.new
      expect(machine.change(41)).to eq([25, 10, 5, 1])
    end
    it 'should return [25, 25, 25, 10, 10, 1, 1, 1] when given 98' do
      machine = ChangeMachine.new
      expect(machine.change(98)).to eq([25, 25, 25, 10, 10, 1, 1, 1])
    end
  end
end
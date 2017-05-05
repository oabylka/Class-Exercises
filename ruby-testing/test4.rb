require 'rspec'

class ChangeMachine

 def change(money)
  	coins = []

    while money != 0
      if money >= 25
        coins.push(25)
        money -= 25
      elsif money >= 10
        coins.push(10)
        money -= 10
      elsif money >= 5
        coins.push(5)
        money -= 5
       elsif money >=1
        coins.push(1)
        money -=1
      end
    end
      
    return coins
 end
  	
end


RSpec.describe ChangeMachine do

  describe '#change' do
    it 'should return 4 1s if we put in 4' do
      moneys = ChangeMachine.new
      expect(moneys.change(25)).to eq([25])
    end
  end

  describe '#change' do
    it 'should return 4 1s if we put in 4' do
      moneys = ChangeMachine.new
      expect(moneys.change(35)).to eq([25,10])
    end
  end

  describe '#change' do
    it 'should return 4 1s if we put in 4' do
      moneys = ChangeMachine.new
      expect(moneys.change(40)).to eq([25,10, 5])
    end
  end

  describe '#change' do
    it 'should return 4 1s if we put in 4' do
      moneys = ChangeMachine.new
      expect(moneys.change(42)).to eq([25,10, 5, 1, 1])
    end
  end


end
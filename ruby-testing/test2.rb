require 'rspec'

class ChangeMachine

 def change(money)
  	coins = []
    remainder = money

    while remainder >= 25
    	coins.push(25)
    	remainder = remainder - 25
    	break if remainder == 0
    	while remainder >= 10
    		coins.push(10)
    		remainder = remainder - 10
    		break if remainder == 0
    		while remainder >= 5
    			coins.push(5)
    			remainder = remainder - 5
    			break if remainder == 0
    			while remainder >= 1
    				coins.push(1)
    				remainder = remainder - 1
    				break if remainder == 0
    			end
    		end
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
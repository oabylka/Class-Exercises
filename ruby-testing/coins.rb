require 'rspec'

class Coin

	def change(number)
		coins = []
		i = 0
		while i < number do
   			coins.push(1)
   			i +=1
		end
		return coins
	end

end

RSpec.describe Coin do

  describe "#change" do

    it 'should return 4 1s if we put in 4' do
      coins = Coin.new
      expect(coins.change(4)).to eq([1,1,1,1])
    end
  end

  describe "#change" do

    it 'should return 1 5 if we put in 5' do
      coins = Coin.new
      expect(coins.change(5)).to eq([5])
    end
  end

end

require 'rspec'

class ChangeMachine

  def change(money)
  	coins = []
    quarters = 0
  	if money >= 25
  		quarters = (money/25).floor
  		quarters.times do |coin|
  			coins.push(25)
        if money - quarters*25 != 0
          remainder = money - quarters*25
          puts "remainder:"+remainder.to_s
          if remainder >= 10
            dimes = (remainder/10).floor
            dimes.times do |dime|
              coins.push(10)
            end
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


end
require 'rspec'

class RomanNumeral



 def interpret(number)
 	@value = number
	result = ""

  	@chart = {1 => "I", 4 => "IV", 5 => "V", 9 => "IX", 10 => "X", 40 => "XL", 50 => "L", 90 => "XC", 100 => "C"}

  	while @value > 0
  		if @chart[@value]
  			result += @chart[@value]
  			return result
  		end

  		result += @chart[prior_value(@value)]
  		@value -= prior_value(@value)

  	end

 end

 def prior_value(number)
 	key_array = @chart.collect{ |k,v| k}
 	key_array << number
 	key_array.sort!

 	index = key_array.find_index(number)
 	return key_array[index-1]
 end
  	
end


RSpec.describe RomanNumeral do

  describe '#interpret' do
    it 'should return 4 1s if we put in 4' do
      roman = RomanNumeral.new
      expect(roman.interpret(3)).to eq("III")
    end
  end

  describe '#interpret' do
    it 'should return 4 1s if we put in 4' do
      roman = RomanNumeral.new
      expect(roman.interpret(6)).to eq("VI")
    end
  end

	describe '#interpret' do
    it 'should return 4 1s if we put in 4' do
      roman = RomanNumeral.new
      expect(roman.interpret(49)).to eq("XLIX")
    end
  end

end
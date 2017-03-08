class PredictionsController < ApplicationController
	def fortune
		@title = "Your worst personality trait is:"
		zodiac_hash = {
			Aries:  "You're bossy, demanding, and at times arrogant.", 
			Taurus:  "You're reliable, but you're also stunningly stubborn.",
			Gemini:  "You're both likable and two-faced.",
			Cancer: "You're so sensitive that you feel like life is a battleground.",
			Leo:  "You are among the more vain and self-centered signs.",
			Virgo: "You're a tightass. You're a perfectionist.",
			Libra: "You're indecisive. Seriously. Make a decision. Please.",
			Scorptio: "You tend to be the most demanding and controlling over people and things.",
			Sagittarius: "You are a know it all, blunt, opinionated person.",
			Capricorn: "You are a total worrywort and is often way too rigid.",
		}
		fortune_values = zodiac_hash.values
		@fortunes = fortune_values[rand(fortune_values.size)]
	end

	def lottery
		@title = "Your lottery numbers are:"
		numbers = []
		count = 6
		while numbers.length < count 
			n = rand(1..60)
			numbers.push(n) unless numbers.include?(n)
		end
		@lottery_number = numbers.join(",")
	end

	def visit

	end

	def ninety_nine
		@title = "Ninety nine bottles of beer on the wall"
		# count = 99
		# @lyrics = 99.times do |x|
		# 	puts "#{@count} bottles of beer on the wall, #{@count} bottles of beer."
		# 	count -=1
		# 	puts "Take one down and pass it around, #{@count} bottles of beer on the wall."	
		# end
		i = 99	
      	while i < 99 and i > 0 
			puts "#{i} bottles of beer on the wall. #{i} bottle of beer."
			i = i - 1
			puts "Take one down, pass it around. #{i} bottles of beer on the wall."
		end
	end

	def people
		@peeps = [
			{first_name: "Olga" , last_name: "Blah", email: "blah@"},
			{first_name: "Eddie", last_name: "Blue", email: "bleu@"},
			{first_name: "Zack", last_name: "Bley", email: "elei@"},
		]
		@peeps.each do |person|
			number = 10.times.map{rand(10)}.join
			#rand.to_s[2..11]
			person[:acct_number] = number
		end

	end




end
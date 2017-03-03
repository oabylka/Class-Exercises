foods = []
number = 1
5.times do
puts "enter your 5 favorites foods"
foods << gets.chomp
end
foods.each do |food|
puts "I love " + food
end

foods.each do |food|
	puts number.to_s + ". " + food
	number += 1
	end

foods.each_with_index do |food|
	putts "#{index+1} #{food}"
end
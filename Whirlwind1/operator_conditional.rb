	# count = 0

	# 11.times do 
	# 	puts count
	# 	count +=1
	# 	end

	 result = false

	# if result != true
	# 	puts "result is not true"
	# end

	# puts "result is not true"  unless result == true

	# unless result 
	# 	puts "hello"
	# end

	# sam_10_recepies = true
	# sam_crepes = true
	# sally_5_langs = true
	# sally_french = true
	# dating = true
	# merry = true

	puts "can Sam cook more than 10 recepies?"
	sam_input = gets.chomp

	if sam_input == "yes" 
		sam_10_recepies = true 
	else
		sam_10_recepies = false
	end

	puts "can Sally speak more than 5 languages?"
	sally_input = gets.chomp

	if sally_input == "yes" 
		sally_5_langs = true 
	else
		sally_5_langs = false
	end

	if (sam_10_recepies == true && sally_5_langs == true )
		puts "Sam and Sally should date"
	else
		puts "Sam and Sally shouldn't date"
	end

sam_crepes = true
sally_french = true

if ((sam_crepes) || (sally_french))
	puts "They should marry"
end



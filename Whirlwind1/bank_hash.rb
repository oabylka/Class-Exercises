client_info = []
input_hash = {first_name: "Olga", last_name: "Byl", email: "olie", account: 1234567891} 

2.times do
	input_hash = {}
	puts "Enter your first name"
	first_name = gets.chomp
	puts "Enter your last name"
	last_name = gets.chomp

	email_is_valid = false
	while email_is_valid == false
		puts "Enter your email address"
		email = gets.chomp
		if (email.include?("@") && email[-4..-1] == ".com")
			email_is_valid = true
		else
			email_is_valid = false
			puts "Please enter a valid email"
		end
	end
	input_hash[:first_name] = first_name
	input_hash[:last_name] = last_name
	input_hash[:email] = email
	input_hash[:account] = rand.to_s[2..11]

 	#acct = 10.times.map {rand(10)}.join
 	#input_hash[:account] = acct

	client_info << input_hash

end

client_info.each do |client|
puts "First name: " + client[:first_name]
puts "Last name: " + client[:last_name]
puts "Email: " + client[:email]
puts "ACCT: " + client[:account]

end

#Bonus

puts "Please enter your account number: "
acct_input = gets.chomp.to_i

client_info.each do |client|
	if client[:account] == acct_input
		puts "User found"
		puts "First name: " + client[:first_name]
		puts "Last name: " + client[:last_name]
		puts "Email: " + client[:email]
		puts "ACCT: " + client[:account]
	end
end

puts "Here is your information: "
#p input_hash.select{|key,hash| (hash[:account]).to_i == acct_input}
p input_hash.invert[:account == acct_input]



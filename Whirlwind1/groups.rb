names = []
input = ""

  while input != "done" 
  	puts "please enter a person's name or done for done"
	input = gets.chomp
	names << input
	end
names.pop(1)

if (names.length%2) != 0 
	puts "Group: "+ names.pop(3).to_s
	names.each_slice(2) do |x,y|
		puts "Group: "+ [x,y].to_s
	end
else
	names.each_slice(2) do |x,y|
		puts "Group: "+ [x,y].to_s
	end
end

#-------------------

names = []
while true
	puts "Enter a student: "
	student = gets.chomp
	if student == "done"
		break
	else
	names << student
	end
end

names.shuffle!

while names.length >0
	if names.length ==3
		p names.pop(3)
	else
		p student.pop(2)
	end
end

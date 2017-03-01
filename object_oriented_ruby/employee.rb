class Employee
	attr_reader :first_name, :last_name
	attr_writer :active
	attr_accessor :salary

	def initialize(input_hash = {})
	@first_name = input_hash.fetch(:first_name, "Jane")
	@last_name = input_hash.fetch(:last_name, "Doe")
	@salary = input_hash.fetch(:salary, 0)
	@active = input_hash.fetch(:active, true)
	end

	def print_info
	puts "#{@first_name} #{@last_name} makes #{@salary} a year."
	end

	def give_annual_raise
	@salary = @salary * 1.05
	end

	def full_name
		if @last_name.end_with? "s"
			full_name = "#{@first_name} #{last_name} Esquire"
		else
			full_name = "#{@first_name} #{last_name}"
		end
	end
end

# employee1 = Employee.new(first_name: "Major", last_name: "Carter", salary: 50000, active: true)
# employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee3 = Employee.new(salary: 70000, active: true)

# p employee1.full_name
# p employee2.full_name
# p employee3.full_name

employee_array = []

10.times do |i|
	employee_array << Employee.new({})
	puts employee_array[i].first_name+" "+employee_array[i].last_name
end




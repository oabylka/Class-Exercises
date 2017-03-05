require "./Employee.rb"
require "./Inter.rb"
require "./Manager.rb"
require "./email_reportable.rb"

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
employee1.print_info
employee2.print_info
#employee1.give_annual_raise
#puts "New salary " + employee1.salary.to_s


manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report

manager.give_all_raises
p employee1.salary
p employee2.salary
manager.fire_all_employees
p employee1.active
p employee2.active

intern = Inter.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true)
intern.send_reports
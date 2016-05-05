require './employee.rb'
require './manager.rb'
require './intern.rb'
require './reports.rb'

employee1 = ACLTC::Employee.new(
  first_name: "Majora", 
  last_name: "Carter", 
  salary: 80000, 
  active: true
  )
employee2 = ACLTC::Employee.new(
  first_name: "Danilo", 
  last_name: "Campos", 
  salary: 70000, 
  active: true
  )

manager = ACLTC::Manager.new(
  first_name: "Saron", 
  last_name: "Yitbarek", 
  salary: 100000, 
  active: true, 
  employees: [employee1, employee2]
  )

intern = ACLTC::Intern.new(
  first_name: "Stan", 
  last_name: "Jones", 
  salary: 20000, 
  active: true
  )

employee1.print_info
employee2.print_info
manager.print_info
intern.send_report

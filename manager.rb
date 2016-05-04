
class Employee < Person

  attr_reader :salary, :active
  attr_accessor :first_name, :last_name

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    if input_options[:active]
      @active = input_options[:active]
    else
      @active = true
    end
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

class Manager < Employee
  attr_accessor :employees

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end
end


# driver code
employee1 = Employee.new(
  last_name: "Smith", 
  first_name: "John", 
  salary: 70000, 
  )

employee2 = Employee.new(
  first_name: "Jane", 
  last_name: "Doe", 
  salary: 80000, 
  active: true
  )

employee3 = Manager.new(
  first_name: "Rupert",
  last_name: "Stanley",
  salary: 100000,
  employees: [employee1,employee2]
  )

p employee3.last_name
p employee3.employees[1].last_name

# p employee1.first_name

















# employee1 = ["John", "Smith", 70000, true]
# employee2 = ["Jane", "doe", 80000, true]

# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[-1]} a year."
# puts

# employee1 = {first_name: "John", last_name: "Smith", salary: 70000, active: true}
# employee2 = {:first_name => "Jane", "last_name" => "Doe", "salary" => 80000, "active" => true}

# puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
# puts "#{employee2['first_name']} #{employee2['last_name']} makes #{employee2['salary']} a year."
# puts

class Employee

  attr_reader :salary
  attr_accessor :first_name

  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end

  # def first_name=(input_first_name)
  #   @first_name = input_first_name
  # end
end


# driver code
employee1 = Employee.new("John", "Smith", 70000, true)
employee2 = Employee.new("Jane", "Doe", 80000, true)
p employee1.first_name
employee1.first_name = "Bill"
p employee1.first_name


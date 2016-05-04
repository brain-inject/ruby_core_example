
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

  attr_reader :salary, :active
  attr_accessor :first_name

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


# driver code
employee1 = Employee.new(
  last_name: "Smith", 
  first_name: "John", 
  salary: 70000, 
  )

# employee2 = Employee.new({first_name: "Jane", last_name: "Doe", salary: 80000, active: true})
p employee1.active


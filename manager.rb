require './employee.rb'
require './reports.rb'

module ACLTC
  class Manager < ACLTC::Employee
    include Reports

    def initialize(input_options)
      super(input_options)
      @employees = input_options[:employees]
    end

    def give_all_raises
      @employees.each do |employee|
        if employee.active
          employee.give_annual_raise
        end
      end
    end

    def fire_all_employees
      @employees.each do |employee|
        employee.active = false
      end
    end
  end
end

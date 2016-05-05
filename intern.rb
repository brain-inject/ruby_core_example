require './employee.rb'
require './reports.rb'

module ACLTC
  class Intern < Employee
    include Reports
  end
end
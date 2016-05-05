require './employee.rb'
require './reports.rb'

class Intern < Employee
  include Reports
end
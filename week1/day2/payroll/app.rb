require_relative("lib/employee.rb")
require_relative("lib/payroll.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)

nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

ike = SalariedEmployee.new('Ike', 'ike@example.com', 1)

sarah = MultiPaymentEmployee.new('Sarah', 'sarah@example.com', 90000, 50, 45)
employees = [josh, nizar, ted, ike, sarah]
payroll = Payroll.new(employees)
payroll.pay_employees
puts ""
payroll.notify_employee

# puts "Nizar's salary is #{nizar.calculate_salary}"
# puts "Josh's salary is #{josh.calculate_salary}"
# puts "Ted's salary is #{ted.calculate_salary}"
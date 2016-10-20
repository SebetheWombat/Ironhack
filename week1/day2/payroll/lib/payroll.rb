class Payroll
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
      total_payroll = 0
      @employees.each do |employee|
      	puts "#{employee.name}'s weekly salary is #{employee.calculate_salary}"
      	total_payroll += employee.calculate_salary
        total_payroll += (total_payroll * 0.18)

        notify_employee(employee)
	  end
	  puts "Total payroll with taxes: #{total_payroll.round(2)}"
  end

  private 
  def notify_employee(employee)
      puts "#{employee.email} your salary this week is #{employee.calculate_salary}"
  end
end
class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      #returns the hours worked * hourly_rate
      (@hourly_rate * @hours_worked) * 0.82
    end
end

class SalariedEmployee < Employee
	attr_accessor :name, :email, :salary
	def initialize(name,email,salary)
		@name = name
		@email = email
		@salary = salary
	end

	def calculate_salary
		(@salary / 52.0) * 0.82
	end
end

class MultiPaymentEmployee < Employee
	attr_accessor :name, :email, :base_salary, :hourly_rate, :hours_worked
	def initialize(name,email,base_salary,hourly_rate,hours_worked)
		@name = name
		@email = email
		@base_salary = base_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		((@base_salary/52.0) + ((@hours_worked-40)*@hourly_rate)) * 0.82
	end
end




class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
	attr_accessor :hourly_rate, :hours_worked
	include Salary
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	hourly_salary
    end
end

class SalariedEmployee < Employee
	attr_accessor :name, :email, :salary
	include Salary
	def initialize(name,email,salary)
		@name = name
		@email = email
		@salary = salary
	end

	def calculate_salary
		salaried_salary
	end
end

class MultiPaymentEmployee < Employee
	attr_accessor :name, :email, :salary, :hourly_rate, :hours_worked
	include Salary
	def initialize(name,email,salary,hourly_rate,hours_worked)
		@name = name
		@email = email
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		multi_salary
	end
end




module Salary
	def hourly_salary
		((@hours_worked * @hourly_rate) * 0.82).round(2)
	end

	def salaried_salary
		pay = (@salary / 52.0) * 0.82
		pay.round(2)
	end

	def multi_salary
		extra = 0
		if @hours_worked > 40
			extra = (@hours_worked-40)*@hourly_rate
		end
			salaried_salary + (extra * 0.82)
	end
end
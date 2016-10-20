class Designer
	include Payable
	include CaffeineConsumer
	def design
		consume_caffeine
		select_typography
		select_colors
		receive_salary
	end

	def select_typography
		puts "Comic sans is awesome"
	end

	def select_colors
		puts "So pretty!"
	end
end
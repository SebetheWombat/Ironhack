class Programmer
	include Payable
	include CaffeineConsumer
	def program
		consume_caffeine
		do_computer_stuff
		receive_salary
	end
	def do_computer_stuff
		puts "Typity type"
	end
end
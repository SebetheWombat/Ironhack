class FizzBuzz
	def fizzbuzz(num)
		str = ""
		if num % 3 == 0
			str += "Fizz"
		end
		if num % 5 == 0
			str += "Buzz"
		end
		if str == ""
			str = num.to_s
		end
		str
	end
end
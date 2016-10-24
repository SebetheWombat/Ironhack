class Calculator
	def add(nums = "")
		nums.gsub! "\n",","
		nums.gsub! "$",","
		if nums == ""
			0
		else
			nums.split(",").map {|n| n.to_i}.inject(:+)
		end
	end

	def subtract(nums = "")
		nums.gsub! "$",","
		if nums == ""
			0
		else
			nums.split(",").map {|n| n.to_i}.inject(:-)
		end
	end
end
class Lex
	def eat_t(str)
		str = str.gsub(/[t,T]/,"")
	end

	def shazam(arr)
		arr.each do |word|
			word.reverse!
		end
		arr = [eat_t(arr.first),eat_t(arr.last)]
	end

	def oompa_loompa(arr)
		a = []
		arr.each do |word|
			a << eat_t(word)
		end
		a.select{|word| word.length <= 3}
	end
end
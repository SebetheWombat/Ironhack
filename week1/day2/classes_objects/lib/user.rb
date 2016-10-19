class User
	attr_accessor :name, :email, :age, :ethnicity, :gender
	def initialize(name,email,age,ethnicity,gender)
		@name = name
		@email = email
		@age = age
		@ethnicity = ethnicity
		@gender = gender
	end

	def pull_sword_from_stone
		if name == "Arthur"
			puts "Congratulations #{name}, you are now king!"
		else
			puts "#{name}, you have failed to remove the sword"
		end
	end
	def login
		puts "\n#{name} logged in with email #{email}"
	end

	def greet
		puts "\nHello, my name is #{name}."
		puts "I am #{age} years old."
	end
end
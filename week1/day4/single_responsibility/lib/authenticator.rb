class Authenticate
	def initialize(username,password)
		@username = username
		@password = password
	end

	def user_match
		@username == "Wombat"
	end

	def pass_match
		@password == "password1sosecure"
	end

end
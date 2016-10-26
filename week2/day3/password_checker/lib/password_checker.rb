
class PasswordChecker
	attr_reader :email, :password
	def check_password(email,password)
		pass = password.split("")
		sym = pass.find{ |i| i =~ /[[^a-zA-Z0-9]]/}
		downletter = pass.find {|i| i =~/[[a-z]]/}
		upletter = pass.find {|i| i =~/[[A-Z]]/}
		num = pass.find {|i| i =~/[[0-9]]/}
		if password.length < 8 || downletter == nil || num == nil || upletter == nil || sym == nil
			false
		else
			true
		end
	end
end
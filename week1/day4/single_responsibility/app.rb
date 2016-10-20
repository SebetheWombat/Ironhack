require_relative("lib/authenticator.rb")
require_relative("lib/word_counter.rb")

print "Username: "
user = gets.chomp
print "\nPassword: "
password = gets.chomp

authenticated = Authenticate.new(user,password)
if authenticated.user_match && authenticated.pass_match
	puts "\nPlease enter text"
	text = gets.chomp
	count = WordCount.new(text)
	count.count
else
	puts "\nInvalid credentials, access denied..."
end
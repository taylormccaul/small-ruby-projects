=begin
password = gets.chomp
def password_check password
	if password.to_s.length < 7
  		print "Password too short!"
	elsif /\d/.match(password) == nil
  		print "Password needs at least one digit!"
	elsif /[A-Za-z]/.match(password) == nil
  		print "Password needs at least one letter!"
	elsif /([A-Za-z]+\d+)/.match(password) != nil && password.to_s.length >= 7
		if password == password.downcase || password == password.upcase
    			print "Requires both a lowercase and uppercase character"
  		else
    			print "Password is strong!"
  		end
	else
  		puts "Unknown error. Did you use a special character?"
	end
end

print password_check(password)
=end
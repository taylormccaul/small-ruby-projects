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

def password_gen
	letters = "abcdefghijklmnopqrstuvwxys".split("")
	upcase_letters = "abcdefghijklmnopqrstuvwxyz".upcase.split("")
	digits = "1234567890".split("")

	puts "Enter a length: "
	length = 0

	max_length = gets.chomp.to_i
	while max_length < 7
		puts "Please enter a length of at least 7."
	end

	password_arr = []

	while length < max_length
		random_arr = rand(1..3)
		random_letter = rand(0..25)
		random_digit = rand(0..9)
		if random_arr == 1
			password_arr.push(letters[random_letter])
			length += 1
		elsif random_arr == 2
			password_arr.push(upcase_letters[random_letter])
			length += 1
		elsif random_arr == 3
			password_arr.push(digits[random_digit])
			length += 1
		end
	end
	password_arr = password_arr.join("")
	print password_arr
end

puts "Welcome to the password checker/generator! Would you like to check an existing password, or generate a new one? Check/gen"
user_input = gets.chomp
if user_input.downcase == "check"
	puts "Enter a password: "
	user_input = gets.chomp
	print password_check(user_input)
elsif user_input.downcase == "gen"
	print password_gen
end

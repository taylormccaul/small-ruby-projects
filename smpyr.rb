puts "How large do you want your pyramid to be? Enter a number under 100."
pyramid_size = gets.chomp.to_i

puts "What character would you like to use for your pyramid? The default is '#'."
pyramid_type = gets.chomp
if pyramid_type == ""
  pyramid_type = "#"
end

while pyramid_type.length.to_i > 1
  puts "Please enter a single character."
  pyramid_type = gets.chomp
end

puts "Left-justified (ljust), right-justified (rjust), or center (center)? The default is left-justified."
justify = gets.chomp
if justify == "" || justify == " "
  justify = "ljust"
end

if pyramid_size < 100
  hash_count = 1
  hashes = pyramid_type

  while hash_count <= pyramid_size
    if justify.downcase == "ljust" || justify.downcase == "left-justified"
    	puts (hashes * hash_count).ljust(100, "-")
    	hash_count += 1
    elsif justify.downcase == "rjust" || justify.downcase == "right-justified"
	puts (hashes * hash_count).rjust(100, "-")
	hash_count += 1
    else
	puts (hashes * hash_count).center(100, "-")
	hash_count += 2
    end
  end
elsif pyramid_size > 100
  puts "Number too large! Enter a number under 100."
else
  puts "Number too small! Enter a number above 1."
end

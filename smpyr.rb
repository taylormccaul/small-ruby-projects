puts "How large do you want your pyramid to be? Enter a number under 100."
pyramid_size = gets.chomp.to_i
puts "Left-justified (ljust), right-justified (rjust), or center (center)?"
justify = gets.chomp

if pyramid_size < 100
  hash_count = 1
  hashes = "#"

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
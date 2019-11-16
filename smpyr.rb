def pyramid
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
end

def square
  puts "What size do you want your square to be?"
  square_size = gets.chomp.to_i

  square_char = "#"
  length = 1

  (square_size / 2).times do
    puts square_char * square_size
  end
end

def diamond
  puts "What size diamond do you want?"
  diamond_size = gets.chomp.to_i

  diamond_char = "#"
  start_width = 1

  while start_width <= diamond_size
    puts (diamond_char * start_width).center(100)
    start_width += 2
  end

  while start_width >= 1
    puts (diamond_char * start_width).center(100)
    start_width -= 2
  end
end

def rectangle
  puts "How long do you want the rectangle to be?"
  rec_length = gets.chomp.to_i
  puts "How wide do you want the rectangle to be?"
  rec_width = gets.chomp.to_i

  rec_char = "#"
  size = 1

  while size <= rec_length.to_i
    puts (rec_char * rec_width).center(100)
    size += 1
  end
end

#def circle
#  puts "What radius circle do you want?"
#  circle_radius = gets.chomp.to_i

#  circle_char = "#"
#  width = 3

#  while width <= (circle_radius + 1)
#    puts (circle_char * width).center(100)
#    width += 2
#  end

#  3.times do
#    puts (circle_char * width).center(100)
#  end

#  while width >= 3
#    puts (circle_char * width).center(100)
#    width -= 2
#  end
##  if width == circle_radius + 1
##    while width >= 3
##      puts circle_char * width
##      width -= 2
##    end
##  end
#end

puts "What shape would you like to make?\nOptions:\npyramid\nsquare\ndiamond\nrectangle"
user_input = gets.chomp
if user_input.downcase == "pyramid"
  puts pyramid
elsif user_input.downcase == "square"
  puts square
elsif user_input.downcase == "diamond"
  puts diamond
elsif user_input.downcase == "rectangle"
  puts rectangle
end

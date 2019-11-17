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

  puts "What character do you want to use to make the square?"
  square_type = gets.chomp
  if square_type == ""
    square_type = "#"
  end

  while square_type.length.to_i > 1
    puts "Please enter a single character."
    square_type = gets.chomp
  end

  length = 1

  (square_size / 2).times do
    puts square_type * square_size
  end
end

def diamond
  puts "What size diamond do you want?"
  diamond_size = gets.chomp.to_i

  puts "What character do you want to use to make the diamond?"
    diamond_type = gets.chomp
  if diamond_type == ""
    diamond_type = "#"
  end

  while diamond_type.length.to_i > 1
    puts "Please enter a single character."
    diamond_type = gets.chomp
  end

  start_width = 1

  while start_width <= diamond_size
    puts (diamond_type * start_width).center(100)
    start_width += 2
  end

  while start_width >= 1
    puts (diamond_type * start_width).center(100)
    start_width -= 2
  end
end

def rectangle
  puts "How long do you want the rectangle to be?"
  rec_length = gets.chomp.to_i
  puts "How wide do you want the rectangle to be?"
  rec_width = gets.chomp.to_i
  puts "What character do you want to use to make the rectangle?"
    rec_type = gets.chomp
  if rec_type == ""
    rec_type = "#"
  end

  while rec_type.length.to_i > 1
    puts "Please enter a single character."
    rec_type = gets.chomp
  end

  size = 1

  while size <= rec_length.to_i
    puts (rec_type * rec_width).center(100)
    size += 1
  end
end

user_input = ""
while user_input.downcase != "no"
  puts "What shape would you like to make?\nOptions:\nPyramid\nSquare\nDiamond\nRectangle"
    user_input = gets.chomp
  if user_input.downcase == "pyramid"
    puts pyramid
    puts "Would you like to make another shape?"
    user_input = gets.chomp
  elsif user_input.downcase == "square"
    puts square
    puts "Would you like to make another shape?"
    user_input = gets.chomp
  elsif user_input.downcase == "diamond"
    puts diamond
    puts "Would you like to make another shape?"
    user_input = gets.chomp
  elsif user_input.downcase == "rectangle"
    puts rectangle
    puts "Would you like to make another shape?"
    user_input = gets.chomp
  end
end

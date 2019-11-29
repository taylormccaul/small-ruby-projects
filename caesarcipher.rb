#puts "Enter a word or phrase to encrypt."
#user_word = gets.chomp
puts "Enter the amount of letters you want to shift over."
shift = gets.chomp.to_i
letters_arr = "abcdefghijklmnopqrstuvwxyz".split("")
counter = 0
letters_arr.each do
    letters_arr[counter] = (letters_arr[counter].ord + shift).chr
    #puts "#{letters_arr[counter]}: " + letters_arr[counter].ord.to_s

    if letters_arr[counter].ord.to_i > 122
        puts "#{(letters_arr[counter].ord - 25).chr}: " + (letters_arr[counter].ord - 25).to_s
    else
	puts "#{letters_arr[counter]}: " + (letters_arr[counter].ord.to_s)
    end

    counter += 1
end

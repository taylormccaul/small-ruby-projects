puts "Enter a word: "
anagram = gets.chomp
puts "Enter a list of possible anagrams that you want to check the word against. Separate them by commas and/or spaces. Ex: apple, banana, orange, etc."
pos_anagrams = gets.chomp
if pos_anagrams.include? ","
  pos_anagrams = pos_anagrams.gsub(" ", "")
  pos_anagrams = pos_anagrams.split(",")
elsif pos_anagrams.include? " "
  pos_anagrams = pos_anagrams.split(" ")
end

pos_anagrams.each do |element|
  if element.chars.sort.join == anagram.chars.sort.join
    puts "#{element.capitalize} is an anagram of '#{anagram}'."
  else
    puts "#{element.capitalize} is not an anagram of '#{anagram}'."
  end
end
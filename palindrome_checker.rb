def palindrome_checker palindrome
  if palindrome.downcase == palindrome.downcase.reverse
    print "Is a palindrome."
  else
    print "Not a palindrome."
  end
end

palindrome = gets.chomp
print palindrome_checker(palindrome)
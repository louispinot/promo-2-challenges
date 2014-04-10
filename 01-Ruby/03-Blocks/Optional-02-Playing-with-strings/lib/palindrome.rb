def palindrome?(a_string)
  #TODO: check if a_string is a palindrome
  a_string.downcase!.gsub!(/\W/, "") == a_string.reverse
end


# Testing palindrome? function
puts "#{palindrome?("A man, a plan, a canal -- Panama")}" #=> true
puts "#{palindrome?("Madam, I'm Adam!")}" # => true
puts "#{palindrome?("Abracadabra")}" # => false
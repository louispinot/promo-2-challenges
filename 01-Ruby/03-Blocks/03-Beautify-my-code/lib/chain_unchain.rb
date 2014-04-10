def shuffle_word(a_word)
  #TODO: refactor this method

a_word.upcase.chars.shuffle

  # cap_word = a_word.upcase
  # chars_enum = cap_word.chars
  # array = chars_enum.to_a
  # shuffle_array = array.shuffle

  # shuffle_array

end


def quote_prime_numbers(n)
  #TODO: refactor this method

  #for integer in (1..n) do # |test_divider|
  #   count = 0
  #   (2..(integer-1)).each {|divider| count += 1 if i % divider != 0}

  # end

  array_of_prime = (1..n).find_all {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }
  array_of_prime.map { |num| "#{num} is prime"}
end
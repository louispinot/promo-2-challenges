def group_anagrams(words) # input is an array

  alphabetized_words ={}
  words.each do |word|
    alphabetized_words[word] = word.downcase.chars.sort.join
  end

  boxes_of_words = {}
  alphabetized_words.each do |original_word, common_string|
     boxes_of_words[common_string]=[]
  end
  alphabetized_words.each do |original_word, common_string|
    boxes_of_words[common_string] << original_word
  end

  grouped_anagrams = []
  boxes_of_words.each do |common_string, array_of_anagrams|
    grouped_anagrams << array_of_anagrams
  end

end

p group_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )




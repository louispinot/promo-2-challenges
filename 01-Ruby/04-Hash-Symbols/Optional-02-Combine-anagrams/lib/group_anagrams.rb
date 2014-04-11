def group_anagrams(words) # input is an array
  alphabetized_words ={}
  words.each do |word|

    alphabetized_words[word] = word.downcase.chars.sort.join
  end
  puts alphabetized_words

  boxes_for_words = {}
  alphabetized_words.each do |original_word, modified_string|
     boxes_for_words[modified_string]=[]
  end
puts
  puts boxes_for_words

  #alphabetized_words.each do |key, val|



end

# input:
p group_anagrams( ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )

# =>  [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]

arraybis = array.dup


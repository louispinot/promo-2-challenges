require 'pry'

def most_common_words(file_name, stop_words_file_name, number_of_word)
  #TODO: return hash of occurences of number_of_word most frequent words
  hash = {}
  stop_words_array = []

  File.open(stop_words_file_name, 'r').each_line do |word|
    stop_words_array << word.chomp
  end
#binding.pry

  File.open(file_name, "r").each_line do |line|
    line = line.downcase.gsub(/[#!()-_=+:\/;\.,?<>&]/, ' ').strip
    word_array = line.split(' ')
    #word_array.each {|word| word.downcase!}
    #word_array.each {|word| hash[word]? hash[word] + 1 : hash[word] = 1}
     word_array.each {|word| hash[word] = (hash[word]? hash[word] + 1 : 1)}
  end
binding.pry
  hash.delete_if {|key, value| stop_words_array.include? key}

  hash = hash.sort_by {|key, value| value}
  hash = hash.reverse.take(number_of_word).to_h

  hash
end

most_common_words("lib/source-text.txt", "lib/stop_words.txt", 8)
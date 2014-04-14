def anagrams?(a_string, another_string)
  #TODO: implement the obvious method to test if two words are anagrams
  if a_string.gsub(/\W/, "").downcase.chars.sort == another_string.gsub(/\W/, "").downcase.chars.sort
    true
  else
    false
  end
end

def anagrams_on_steroids?(a_string, another_string)
  #TODO: implement the improved method
  test_hash = {}
  test_hash[a_string.gsub(/\W/, "").downcase.chars.sort] = ""
  test_hash[another_string.gsub(/\W/, "").downcase.chars.sort] = ""
  test_hash.length == 1 ? true : false
end

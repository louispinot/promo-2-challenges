# Encoding: utf-8

def louchebem_translator(word, vowels=%w(a e i o u y))
    unless word.length < 3
      prepare_end(word)
      deal_with_start(word)
      pimp_the_end(word)
    end
end


def prepare_end (word, vowels=%w(a e i o u y))
    # last_character = word[-1]
    # penultimate_character = word[-2]

    unless vowels.include? word[-1]
      word = word[0..-2] if vowels.include? word[-2]
      word[-2..-1] = "é" if word[-2..-1] == "er"
    end
end


def deal_with_start (word, vowels=%w(a e i o u y))
    unless vowels.include? word[0]  # commence par une voyelle
      move_2_letters = {word[0..1] = "qu" || word[0..1] = "gu" || vowels.include? word[1]}
      if move_2_letters
          start = word[0..1]
          word = word[2..-1] + start
      else
        start = word[0]
        word = word[1..-1] + start
      end
    word = word.insert(0, "l")
end


def pimp_the_end (word)
    ending_options = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
    ending = ending_options.sample
    word = word.insert(-1, ending)
end







def louchebemize(sentence)
  #TODO: implement your louchebem translator
end
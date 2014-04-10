# Encoding: utf-8

def louchebem_translator(word, vowels=%w(a e i o u y))

    do ### pour les mots de plus d'une lettre

    if vowels.include? word[0]  # commence par une voyelle
      word = word.insert(0, "l")


    else   #commence par une consonne


    end   ## fin du "if begins by vowels"
    end unless word.length == 1

end


def prepare_end (word, vowels=%w(a e i o u y))
    unless vowels.include? word[-1]
      word = word[0..-2] if vowels.include? word[-2]
      word[-2..-1] = "é" if word[-2..-1] == "er"
    end
end


def deal_with_start (word, vowels=%w(a e i o u y))
    unless vowels.include? word[0]  # commence par une voyelle
      if vowels.include? word[1]  # 2e lettre est une consonne
        start = word[0..1]
        word = word[2..-1] + start
      else                        # 2e lettre est une voyelle
        start = word[0]
        word = word[1..-1] + start
      end
    word = word.insert(0, "l")
end


def pimp_the_end (word())









def louchebemize(sentence)
  #TODO: implement your louchebem translator
end
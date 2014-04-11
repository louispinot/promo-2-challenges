# Encoding: utf-8



def louchebem_translator(word, vowels=%w(a e i o u y))
    unless word.length < 3
      word = prepare_end(word)
      word = deal_with_start(word)
      word = pimp_the_end(word)
    end
    word
end


def prepare_end (word, vowels=%w(a e i o u y))
    if word[-2..-1] == "er" || word[-2..-1] == "et"
      word[-2..-1] = "é"
    else
      unless vowels.include?(word[-1]) || word[-1] == "n"  #auquel cas on fait rien
        word = word[0..-2]
      end
    end
    word
end

def deal_with_start (word, vowels=%w(a e i o u y))

    ## CONDITIONS
    first = word[0]
    second = word[1]

    move0letter = vowels.include? first
    commence_par_voyelle_puis_consonne = !vowels.include?(first) && vowels.include?(second)
    commence_pas_par_qu = (word[0..1] != "qu" && word[0..1] != "gu")
    move1letter = commence_par_voyelle_puis_consonne && commence_pas_par_qu
    move2letters = (move1letter || move0letter) == false

    if move2letters
      start = word[0..1]
      word = word[2..-1] + start
    elsif move1letter
      start = word[0]
      word = word[1..-1] + start
    else nil        #move0letter
    end

    word = "l" + word

end


def pimp_the_end (word)
    ending_options = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
    ending = ending_options.sample
    word = word.insert(-1, ending)
end

test = ["filament", "boucher", "comprend", "default", "kiwi", "pasteque", "filet", "filament", "chat", "embrun", "chien", "repas", "boucher", "guerre", "quenouille", "artiste", "spécial", "guerre"]

test.each {|word| p louchebem_translator(word)}

# def louchebemize(sentence)
#   #TODO: implement your louchebem translator
# end
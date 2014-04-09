def old_roman_numeral(an_integer)

  #digit_inf_a_5 = ["I", "X", "C"]
  #digit_sup_a_5 = ["V", "L", "D"]



  numeral = an_integer.to_s.split("").reverse!

  translator = Hash.new

  numeral.each {|digit|
    if digit.to_i < 5
      translator[digit] = [0, digit.to_i,]
    else
      translator[digit] = [1, (digit.to_i-5)]
    end  }

  print translator
  puts

  map = [["v", "i"],["l", "x"], ["d", "c"]]

  coordinates=[]

  numeral.each {|digit|
    coordinates << translator[digit]}

  print coordinates
  puts

  roman = []

  for k in 0..(coordinates.count-1) do
    roman[k] = coordinates[k][0]*map[k][0] #+ coordinates[k][1]*map[k][1]
  end

print roman
puts

#  translator.each_key {|key|
 #   if translator[key]=O
  #    key = key.to_i.
   # }



=begin
  roman = []
  translator = translator.each {|arab, roman|
    if arab.to_i < 5
      roman = 0
    else roman = 1
    end }

    puts translator


  for i in 0..(numeral.count) do

    if numeral[i].to_i < 5
      roman[i] = ref[i][0]*numeral[i].to_i
    else roman[i] = ref[i][1] + ref[i][0]*numeral[i].to_i
    end

  end
=end
end


def roman_numeral(an_integer)
  #TODO: translate integer in roman number - modern-style way
end

print old_roman_numeral(549)
def old_roman_numeral(an_integer)
  arab_numbers = an_integer.to_s.split("").reverse.map {|digit| digit.to_i}
  coordinates = mapping_coordinates(arab_numbers)
  map = [["V", "I"],["L", "X"], ["D", "C"]]

  roman_numerals = conversion(map,coordinates)

  roman_numerals = roman_numerals.reverse.join

  print roman_numerals
  puts

end


def mapping_coordinates(arab_numbers)
  translator = Hash.new
  arab_numbers.each {|digit|
    if digit < 5
      translator[digit] = [0, digit]
    else
      translator[digit] = [1, (digit-5)]
    end  }
  coordinates=[]
  arab_numbers.each {|digit|
    coordinates << translator[digit]}
  coordinates
end


def conversion(map,coordinates)
  converted_array = []
  for i in 0..(coordinates.count-1) do
    gps = []
    coordinates[i][0].times {gps.push(map[i][0])}
    coordinates[i][1].times {gps.push(map[i][1])}
    converted_array << gps.join
  end
  converted_array
end



def roman_numeral(an_integer)
  #TODO: translate integer in roman number - modern-style way
end

print old_roman_numeral(40)
CONVERSION = { "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000
}

EXCEPTION = { /IV/ => "IIII",
  /XL/ => "XXXX",
  /CD/ => "CCCC"}

def roman_to_integer(roman_string)
  #TODO: translate roman string to integer

  EXCEPTION.each do |old, new|
    roman_string.sub!(old, new)
  end

  integer = 0

  roman_string.each_char do |char|
    integer += CONVERSION[char]
  end
  integer
end

# testing your program
puts roman_to_integer('IV') == 4 # => true
puts roman_to_integer('XII') == 12 # => true
puts roman_to_integer('XIX') == 19 # => true




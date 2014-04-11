
def array_to_hash(array)

  hash = {}
  keys_array = []
  array.each_index {|i| keys_array[i] = i}

  keys_array.each do |index|
    if block_given?
      key = yield(index)
      hash[key] = array[index]
    else
      hash[index] = array[index]
    end
  end

  hash
end


#yield "kim"

#method(arg) {|nom| nom.capitalize!}
 puts array_to_hash(%w(aze rty uiop)) { |index| "key#{index + 1}" }
 puts array_to_hash(%w(aze rty uiop))



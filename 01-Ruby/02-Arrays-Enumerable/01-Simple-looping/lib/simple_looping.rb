def sum_with_while(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure
  k = min
  sum = k
  while k < max do
    k +=1
    sum += k
  end
  sum
end

def sum_with_for(min,max)
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure
  sum = 0
  for k in (min..max)
    sum += k
  end
  sum
end

def sum_recursive(min,max)
  #TODO (optional): return the sum of the integers between min and max
  #CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself

  if min > max
    raise ArgumentError, "please enter min < max"
  elsif min < max
    sum = max + sum_recursive(min, max-1)
  else
    min
  end

end










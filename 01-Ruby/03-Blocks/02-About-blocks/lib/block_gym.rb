def tag(tag_name, attr = nil)
  #TODO:  Build HTML tags around  content given in the block
  #       The meth  od can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  my_tag = "<#{tag_name}"
  my_tag += " #{attr[0]}='#{attr[1]}'" unless attr == nil
  my_tag += ">"

  my_tag += yield

  my_tag += "</#{tag_name}>"

  my_tag
end

def tag_correction_boris(tag_name, attr = nil)
  if attr == nil
    res = "<#{tag_name}>#{yield}</#{tag_name}>"
  else
    res = "<#{tag_name} #{attr[0]}='#{attr[1]}'>#{yield}</#{tag_name}>"
  end
  res
end


def timer_for
  #TODO:  Return time taken to execute the given block
  start = Time.now
  yield
  finish = Time.now
  time = finish - start
end

def transform(element)
  #TODO:  Simply execute the given block on element
  yield element

end

## argument in a bloc: {|arg|   dfdfdfsd }

#  transform(thing) {|thing| jknjkjnnk}
def french_phone_number?(phone_number)
  # TODO: true or false?
  m = phone_number.delete(" ").delete("-").match(/((0|\+33|0033)[1-9]\d{8})/)
  m != nil ? true : false
end

# This "require_relative" line loads your own "age_in_days.rb" file. Notice the
# "_relative" suffix: the given path is relative to the location of the file
# from which "require_relative" is called
require_relative './age_in_days'

birthdate = ["year", "month", "day"]

for k in 0..2
 puts "What's your " + birthdate[k] + " of birth ?"
 birthdate[k] = gets.chomp.to_i
end

calculated_age = age_in_days(birthdate[0], birthdate[1], birthdate[2])

puts "You are #{calculated_age} days old... phew!"



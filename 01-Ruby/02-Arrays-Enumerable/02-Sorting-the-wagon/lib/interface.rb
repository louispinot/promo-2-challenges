require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just got to the students array

  students.push(name)

end while name != ""

# TODO: Call `wagon_sort` method and display the sorted student list

wagon_sort(students)
Puts "Congratulations! Your Wagon has #{students.length} students:"
for student in students do
  print "#{student}, " end
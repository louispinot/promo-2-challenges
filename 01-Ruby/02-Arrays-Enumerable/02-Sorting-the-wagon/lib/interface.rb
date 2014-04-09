require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just got to the students array

  students.push(name)

end until name == ""

students = students[0..-2]
student_count = students.count
list_of_students = ""
# TODO: Call `wagon_sort` method and display the sorted student list

wagon_sort(students)

for i in 0..student_count-2 do
    list_of_students << students[i].to_s
    list_of_students << ", "
end

list_of_students = list_of_students[0..-3].to_s + " and " + students[student_count-1].to_s

puts "Congratulations! Your Wagon has #{students.count} students:
        #{list_of_students}"
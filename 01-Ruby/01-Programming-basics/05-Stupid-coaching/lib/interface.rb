require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.
puts "Your coach is standing in front of you, you feel like talking to him!"
speech = gets.chomp

until coach_answer_enhanced(speech)==nil do
  puts coach_answer_enhanced(speech)
  speech = gets.chomp
end
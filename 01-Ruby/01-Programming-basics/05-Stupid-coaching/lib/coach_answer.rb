def coach_answer(your_message)
  return if your_message == "I am going to work right now SIR !"
  if your_message[-1..-1] == "?"
    "Silly question! get dressed and go to work !"
  else
    "I don't care son, get dressed and go to work !"
  end

end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours !
  if your_message == your_message.upcase
    "I can feel your motivation son ! " + coach_answer(your_message)
  else coach_answer(your_message)
  end
end
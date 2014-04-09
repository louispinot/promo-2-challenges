require_relative 'black_jack'

def play_game
  #TODO: make the ser play from terminal in a while loop that will stop when the user will not be asking for  a new card
score = 0

asking_for_card?(score)

end



def state_of_the_game(bank, score)
  # TODO: Returns custom message with player's score and bank's score
  "your score is #{score}, the bank has #{bank}"
end

def asking_for_card?(score)
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice

  bank = bank_score
  play = true

  until (play == false || score >= 21)
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    answer = gets.chomp.downcase
    if answer == 'yes' || answer == 'y'
      score += pick_card
      puts state_of_the_game(bank, score)
    else (play = false)
    end
  end

  build_message_for(bank, score)
end


def build_message_for(bank, score)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  if score == 21
      puts "Black Jack!! You won!"
  elsif score < 21 && score > bank
      puts "You beat the bank! You win."
  elsif score < 21 && score <= bank
      puts "Bank beats you! You loose."
  else
    puts "You're over 21, you lose"
  end

end

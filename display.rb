module Display

  def instructions_prompt
    puts "Welcome to Mastermind!"
    puts "This is a 1 player game against the computer where the computer will choose a secret code of colours and you must guess it. There are 6 available colours:"
    puts "#{"Red".bg("red")} #{"Blue".bg("blue")} #{"Green".bg("green")} #{"Yellow".bg("yellow")} #{"Purple".bg("purple")} #{"Cyan".bg("cyan")}"
    puts "The computer will make a code comprising of 4 of these colours in a certain order. In order to win, you will have to guess the code in 12 or less turns."
    puts "During each turn you will type in 4 colours seperated by spaces and they will be compared to the code."
    puts "An example guess would be the following: 'red green yellow blue'"
    puts "After each guess, there will be up to 4 clues which will indicate if your guess was similar to the code."
    puts "\e[91m\u25CF\e[0m means you have a correct colour in the correct position."
    puts "\e[37m\u25CB\e[0m means you have a correct colour in the incorrect position."
    puts "The clues will not be in order."
  end


  def start_prompt
    puts "The computer has made it's selection, you must now begin guessing. You have 12 guesses, good luck!"
  end

  def turn_prompt(turn)
    puts "Turn #{turn}: Type in the 4 colours of your guess in order."
  end

  def invalid_guess_prompt
    puts "That was not a valid guess. Please remember to enter 4 colour names (out of red, green, blue, yellow, purple & cyan) seperated by spaces such as 'red blue green yellow'."
  end

  def game_won_prompt(turn)
    case turn
    when 1
      puts "Congratulations you decoded the code! It took you #{turn} turn."
    else
      puts "Congratulations you decoded the code! It took you #{turn} turns."
    end
  end

  def game_over_prompt(selection)
    puts "You lose! Unfortunately you ran out of turns. The code was #{selection}"
  end

  def play_again_prompt
    puts "If you would like to play again press 'y'. To quit, enter any other key:"
  end

  def thank_you_prompt
    puts "Thank you for playing!"
  end
end

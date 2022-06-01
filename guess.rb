require_relative 'string.rb'

class Guess

  attr_accessor :black_peg, :white_peg, :game_won

  @@guesses = 0

  def initialize(user_guess, selection)
    @guess = [user_guess[0], user_guess[1], user_guess[2], user_guess[3]]
    @selection = selection.dup
    @black_peg = 0
    @white_peg = 0
    @game_won = false
  end

  def check
    @guess.each_with_index do |guess, index|
      if guess == @selection[index]
        @black_peg += 1
        @selection[index] = 1
        @guess[index] = 0
      end
    end
    @guess.each do |guess|
      if @selection.include?(guess)
        @white_peg += 1
        @selection.delete_at(@selection.index(guess))
      end
    end
    @black_peg == 4 ? @game_won = true : @game_won = false
  end

  def game_won
    @game_won
  end

end

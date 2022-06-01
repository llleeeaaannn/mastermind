require_relative 'display'
require_relative 'guess'

class Game

  include Display

  def initialize(duplicates)
    @duplicates = duplicates
    @colors = %w[red blue green yellow purple cyan]
    @turn = 1
  end

  def create_selection
    if @duplicates
      @selection = []
      4.times do
        @selection.push(@colors.sample)
      end
    else
      @selection = @colors.sample(4)
    end
  end

  def start
    start_prompt
  end

  def turn
    turn_prompt(@turn)
    @input = gets.chomp.to_s.downcase.split
    if (@input.all? { |color| @colors.include?(color) }) && (@input.length == 4)
      @guess = Guess.new(@input, @selection)
      @guess.check
      @b_peg = @guess.black_peg
      @w_peg = @guess.white_peg
      @turn += 1
    else
      invalid_guess_prompt()
      turn()
    end
    result
    next_turn
  end

  def next_turn
    if !@guess.game_won && @turn != 13
      turn()
    elsif @guess.game_won
      win_game()
    elsif @turn >= 13
      lose_game()
    end
  end

  def win_game
    game_won_prompt(@turn - 1)
  end

  def lose_game
    game_over_prompt(@selection)
  end

  def play_again
    play_again_prompt
    gets.chomp.to_s.downcase == "y" ? Main.new : thank_you_prompt()
  end

  def result
    puts " "
    puts @input[0].bg(@input[0]) + " " + @input[1].bg(@input[1]) + " " +  @input[2].bg(@input[2]) + " " +  @input[3].bg(@input[3]) + " " + Clue.new(@b_peg, @w_peg).display
  end


  protected

  def selection
    @selection
  end

end

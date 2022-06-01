class Clue

  attr_reader :display

  def initialize(black, white)
    @black = black
    @white = white
    @display = " Clues: "
    @black.times { @display += "\e[91m\u25CF\e[0m "}
    @white.times { @display += "\e[37m\u25CB\e[0m "}
  end

end

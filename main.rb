require_relative 'game'
require_relative 'guess'
require_relative 'clue'
require_relative 'string'
require_relative 'display'
include Display


class Main

  include Display

  def initialize
    game = Game.new(true)
    game.create_selection
    game.start
    game.turn
    game.play_again
  end

end

instructions_prompt()
Main.new

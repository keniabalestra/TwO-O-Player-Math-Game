# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require './game'
require './player'
require './question'

game = Game.new
game.run_game

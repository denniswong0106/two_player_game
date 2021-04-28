# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './turn'
require './question'
require './player'
require './game'

# - allows for user input for the answer
# - displays the question, lives, and turn for both players

game = Game.new

game.start_game
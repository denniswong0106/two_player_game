# - allows for user input for the answer
# - displays the question, lives, and turn for both players

require './turn'
require './question'
require './player'
require './game'

class Game

  attr_accessor :player_two, :player_one, :question

  def initialize
    @player_one = Player.new("Player_one", true)  
    @player_two = Player.new("Player_two", false)
    @question = Question.new
  end
  
  def start_game
    print "Hello, welcome to Two Player Maths Game\n"
      while true
        if player_one.turn == true
          print "Player 1: #{question.generate_question}"
          print "> "
          choice = $stdin.gets.chomp
          if choice != question.get_answer
            print "Seriously? No!\n"
            player_one.lives -= 1
          else
            print "Yes! You are correct.\n"
          end
          print "#{player_one.lives}/3 vs #{player_two.lives}/3\n"
          player_one.turn = false
          player_two.turn = true
        else
          print "Player 2: #{question.generate_question}"
          print "> "
          choice = $stdin.gets.chomp
          if choice != question.get_answer
            print "Seriously? No!\n"
            player_two.lives -= 1
          else
            print "Yes! You are correct.\n"
          end
          print "#{player_one.lives}/3 vs #{player_two.lives}/3\n"
          player_one.turn = true
          player_two.turn = false
        end
      end
  end
  
  
  
end
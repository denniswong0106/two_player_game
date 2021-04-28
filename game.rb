# - allows for user input for the answer
# - displays the question, lives, and turn for both players

require './question'
require './player'
require './game'

class Game

  attr_accessor :player_two, :player_one, :question, :turn

  def initialize
    @player_one = Player.new("Player 1")  
    @player_two = Player.new("Player 2")
    @question = Question.new
    @turn = @player_one
  end

  def set_turn
    if turn.name == "Player 1"
      self.turn = player_two
    else
      self.turn = player_one
    end
  end

  def loser?
    if turn.lives == 0
      set_turn
      print "#{turn.name} wins with a score of #{turn.lives}/3.\n"
      print "--------- GAME OVER ---------\n"
      print "Good bye!\n"
      exit(0)
    end
  end

  def start_game
    print "Hello, welcome to Two Player Maths Game\n"
      while true
        print "#{turn.name}: #{question.generate_question}> "
        choice = $stdin.gets.chomp
        if choice != question.get_answer
          print "Seriously? No!\n"
          turn.lives -= 1
        else
          print "Yes! You are correct.\n"
        end
        loser?      
        set_turn
        print "P1:#{player_one.lives}/3 vs P2:#{player_two.lives}/3\n"
        print "--------- NEW TURN --------- \n"

      end
  end 
  
end

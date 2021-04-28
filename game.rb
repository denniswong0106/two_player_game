# - allows for user input for the answer
# - displays the question, lives, and turn for both players

require './turn'
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
        print "#{player_one.lives}/3 vs #{player_two.lives}/3\n"
        set_turn

      end
  end
  
  
  
end


# def start_game
#   print "Hello, welcome to Two Player Maths Game\n"
#     while true
#       if player_one.turn == true
#         print "Player 1: #{question.generate_question}"
#         print "> "
#         choice = $stdin.gets.chomp
#         if choice != question.get_answer
#           print "Seriously? No!\n"
#           player_one.lives -= 1
#         else
#           print "Yes! You are correct.\n"
#         end
#         print "#{player_one.lives}/3 vs #{player_two.lives}/3\n"
#         player_one.turn = false
#         player_two.turn = true
#       else
#         print "Player 2: #{question.generate_question}"
#         print "> "
#         choice = $stdin.gets.chomp
#         if choice != question.get_answer
#           print "Seriously? No!\n"
#           player_two.lives -= 1
#         else
#           print "Yes! You are correct.\n"
#         end
#         print "#{player_one.lives}/3 vs #{player_two.lives}/3\n"
#         player_one.turn = true
#         player_two.turn = false
#       end
#     end
# end

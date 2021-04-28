# -stores who's turn it is (ie. current player)

class Turn

  attr_accessor :turn

  def initialize
    @turn = "Player 1"
  end

  def next_turn
    if turn == "Player 1"
      self.turn = "Player 2"
    else 
      self.turn = "Player 1"
    end
  end

end
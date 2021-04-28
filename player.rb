# -stores how many lives they have left(start with 3)
# -need to be able to set and get lives instance variable

class Player

  attr_accessor :lives, name, :turn

  def initialize(name, turn)
    @name = name
    @lives = 3
    @turn = turn
  end

end

# -stores how many lives they have left(start with 3)
# -need to be able to set and get lives instance variable

class Player

  attr_accessor :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

end

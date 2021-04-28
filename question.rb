# -stores randomly generated number states
# -creates question with the two random numbers (bewteen 1 and 20)
# -every time a question is gernated, number one and two are first randomly generated


class Question

  attr_accessor :number_one, :number_two

  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
  end

  def generate_question
    self.number_one = rand(1..20)
    self.number_two = rand(1..20)
    "What does #{number_one} plus #{number_two} equal?"
  end
  
  def get_answer
    (number_one + number_two).to_s
  end

end
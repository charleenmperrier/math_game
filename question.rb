class Question
  attr_accessor :num1, :num2
 
  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
    
  end

  def ask
    puts "What is the sum of #{@num1} plus #{@num2}?"
  end

  def answer
    @num1 + @num2
  end


end

# P1 = Question.new

# puts P1.ask       # generates the question with 2 random nums
# puts P1.answer    #sum of the two random numbers
# # puts P1.answer(14)
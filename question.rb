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

class Player
  attr_accessor :current_score, :name

  def initialize(n)
    @name = n
    @current_score = 3
  end

  def remove_point
    @current_score -= 1
  end



end


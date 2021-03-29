class Player
  attr_accessor :current_score, :name

  def initialize(n)
    @name = n
    @current_score = 3
  end

  # def add_point
  #   @current_score += 1
  # end

  def remove_point
    @current_score -= 1
  end



end

# P2 = Player.new

# puts P2.current_score
# puts P2.remove_point
# # p P2.current_score

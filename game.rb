require './question'

 class Game
  attr_accessor :current_player
  
  def initialize
    @current_player = 'Player 1'
  end

  def begin_game
    puts "Welcome to Math Game!"
  end

  def game_play
    #question class
    # while true
     

      question = Question.new
      puts "#{current_player}: #{question.ask}"

      print ">"
      input = $stdin.gets.chomp

      if question.answer == input
        "answer was right"
      else
        puts question.answer
        puts input
        "answer was wrong"
        #player remove point from current_player
      end
  end

  def winner

  end

  def game_over
    "Good Bye!"
    exit(0)
  end

 end

new_game = Game.new
puts new_game.begin_game
puts new_game.game_play
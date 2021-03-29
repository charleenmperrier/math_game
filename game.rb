require './question'
require './player'

 class Game
  attr_accessor :current_player, :current_score, :round_num

  def initialize
    @current_player = current_player
    # @current_score = score
    @round_num = 0
  end

  def begin_game
    puts "Welcome to Math Game!"
    question_round
  end

  def single_question
 
      question = Question.new
      # puts "#{current_player}: #{question.ask}"
      question.ask
      print ">"
      input = $stdin.gets.chomp.to_i
      answer = question.answer.to_i

      puts input
      puts answer
      if answer == input
        "answer was right"
      else
        "answer was wrong"
        #player remove point from current_player
      end
  end

  
  def question_round

  player1 = Player.new("Player 1")
  player2 = Player.new("Player 2")


    @round_num += 1
    puts "----Round #{round_num}----"
    current_player = player1
    puts "#{player1.name} your turn:"
    single_question

    puts "----Round #{round_num} continued----"
    current_player = player2
    puts "#{player2.name} now your turn:"
    single_question
    # question_round

    game_over
  end

  def check_score

  end

  def game_over
    "Good Bye!"
    exit(0)
  end

 end

new_game = Game.new
puts new_game.begin_game
# puts new_game.question_round
require './question'
require './player'

 class Game
  attr_accessor :current_player, :round_num

  def initialize
    @current_player = current_player
    @round_num = 0
  end

  #starts the game on command-line
  def begin_game
    puts "Welcome to Math Game!"
    question_round
  end

  def game_over
    "Good Bye!"
    exit(0)
  end

  def single_question
    question = Question.new
    question.ask #asks the question on command-line
    print ">"
    input = $stdin.gets.chomp.to_i
    answer = question.answer.to_i
    
    if answer == input
      puts "#{@current_player.name}: you got it right!"
    else
      puts "#{@current_player.name}: nope that's wrong :("
      @current_player.remove_point
    end
  end

  
  def question_round
    player1 = Player.new("Player 1")
    player2 = Player.new("Player 2")

    while true    #looping through question template until a player loses
      @round_num += 1
      puts "----Round #{round_num}----"
      @current_player = player1
      puts "#{player1.name} your turn:"
      single_question
      if player1.current_score == 0
        puts "----GAME OVER----"
        puts "#{player2.name} wins with a score of #{player2.current_score}/3"
        game_over
      else
        puts "P1: #{player1.current_score}/3 vs P2: #{player2.current_score}/3"
      end

      puts "----Round #{round_num}----"
      @current_player = player2
      puts "#{player2.name} now your turn:"
      single_question
      if player2.current_score == 0
        puts "----GAME OVER----"
        puts "#{player1.name} wins with a score of #{player1.current_score}/3"
        game_over
      else
        puts "P1: #{player1.current_score}/3 vs P2: #{player2.current_score}/3"
      end
    end
  end

 end


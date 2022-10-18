require './player'
require './question'

class Game
  def initialize
    @player_1 = Player.new("Player_1:")
    @player_2 = Player.new("Player_2:")
    @round = 1
  end

  def current_player
   if @round %2 == 0
    current_player = @player_2
   else
    current_player = @player_1
   end
   return current_player
  end

  def round
    player = current_player
    question = Question.new

   if !question.start(current_player.name)
    player.reduce_life
   end
   @round += 1
  end
  
  def game_over
    puts "\n***** GAME OVER *****"
    puts "\n------ SCORE ------ "
    puts "Player 1: #{@player_1.lives}/3 lives. \nPlayer 2: #{@player_2.lives}/3 lives."
    puts "See you next time!"
  end

  def run_game
    while @player_1.lives > 0 && @player_2.lives > 0
      round
      puts "P1: #{@player_1.lives}/3 lives. P2: #{@player_2.lives}/3 lives."
    end
      game_over
  end
end


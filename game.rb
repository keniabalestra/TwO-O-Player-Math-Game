require './player'
require './question'

class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @round = 1
  end

  def current_player
   if @round %2 == 0
    current_player = @player_1
   else
    current_player = @player_2
   end
   return current_player
  end

  def round
    player = current_player
    question = Question.new

   if !question.start
    player.reduce_life
   end
    puts"#{player.lives}/3"
   @round += 1

  end
  
  def game_over
    puts "------ GAME OVER ------"
    puts "Goodbye!"
  end

  def check_run_game
    while @player_1.lives > 0 && @player_2.lives > 0
      round
    end
      game_over
  end
end


game1= Game.new
game1.check_run_game



class Player
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def reduce_life
    @lives -= 1
  end

  def lives
    @lives
  end
end
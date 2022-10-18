class Question

  def initialize
    @random_number1 = rand(1...20)
    @random_number2 = rand(1...20)
  end

  def start(player_name)
    puts "\n------ NEW TURN ------"
    puts "#{player_name} What does #{@random_number1} plus #{@random_number2} equal?"

    result = gets.chomp.to_i

    if result == @random_number1 + @random_number2
      puts "YES! You're correct!"
      return true
    else
      puts "Seriously? No!"
      return false
    end
  end
  
end

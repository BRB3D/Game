class Player # will have either player 1 or 2 and will initialize the lives 
  attr_accessor :lives
  attr_reader :number
  def initialize(number)
    @number = number
    @lives = 3
  end

  def substract
    self.lives -= 1
  end
    
end

# p1 = Player.new(1)
# pp p1

# puts p1.lives


# p1.substract

# puts p1.lives
# p2 = Player.new(2)

# pp p2
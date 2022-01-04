
class Turn # turns will take care of alternating between players and receiving Input and verifying with question
  attr_accessor :counter

  def initialize
    @counter = 0 
  end

  def new_Turn 
    self.counter += 1
  end
  
  end

  # t1 = Turn.new
  # puts t1.counter

  # t1.new_Turn

  # puts t1.counter

  # t1.new_Turn

  # puts t1.counter
  
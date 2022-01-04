

class Question # question will take care of randomizing the numbers.
  attr_accessor :num1, :num2, :res

  def initialize
    @num1 = rand(1..20)#randomize number with range 1-20
    @num2 = rand(1..20)#randomize number with range 1-20
    @res = 0
  end

  def randomize
    self.num1 = rand(1..20) #randomize number with range 1-20
    self.num2 = rand(1..20)#randomize number with range 1-20
  end

  def result 
    self.res = num1 + num2
  end
  # sum of the numbers 
  
  end
  

  # q = Question.new

  # puts q.num1, q.num2, q.result

  # q.randomize

  # puts q.num1, q.num2, q.result
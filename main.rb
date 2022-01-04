require "./player"
require "./question"
require "./turn"


#will have the while loop to keep creating turns until one of the players reaches 0 lives
  player1 = Player.new(1)
  player2 = Player.new(2)
  q = Question.new
  turn = Turn.new
  
  while player1.lives > 0 && player2.lives > 0
    if turn.counter % 2 == 0 
      puts "Player #{player1.number}: What does #{q.num1} plus #{q.num2} equal"
      print "> "
      r = gets.chomp.to_i
      if q.result != r
        player1.substract
        puts "Player 1: Seriously? No!"
      else 
        puts "Player #{player1.number}: YES! You are correct."
      end
    if player1.lives > 0 && player2.lives > 0
      puts "P1: #{player1.lives}/3 vs P2 #{player2.lives}/3"
      puts "------- New Turn -------------"
    end
    turn.new_Turn
    q.randomize
    else
      puts "Player #{player2.number}: What does #{q.num1} plus #{q.num2} equal"
      print "> "
      r = gets.chomp.to_i
      if q.result != r
        player2.substract
        puts "Player 2: Seriously? No!"
      else
        puts "Player #{player2.number}: YES! You are correct."
      end
    if player1.lives > 0 && player2.lives > 0
    puts "P1: #{player1.lives}/3 vs P2 #{player2.lives}/3"
    puts "------- New Turn -------------"
    end
    turn.new_Turn
    q.randomize
    end
  end

  if player1.lives > 0
    puts "Player 1 wins with a score of #{player1.lives}/3"
  else
    puts "Player 2  wins with a score of #{player2.lives}/3"
  end
  
  

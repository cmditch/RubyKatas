def main
puts "Throw your mighty fist sir! Rock, Paper, or Scissors!"
your_hand = gets.chomp.downcase

  if your_hand == "rock" || your_hand == "paper" || your_hand == "scissors"
    rps_play(your_hand)
  else
    puts "Try again."
    sleep 1
    main
  end
end

def rps_play(persons_hand)
  # Computer rolls 1, 2, or 3, i.e. rock, paper, scissors.
  computers_play = rand(1..3)
  r = "Computer: Rock\n"
  p = "Computer: Paper\n"
  s = "Computer: Scissors\n"
  yw = "You Win!"
  cw = "Computer Wins"
  t = "Tie!"

  case persons_hand
    when "rock"
      computers_play == 1 ? puts(r + t) : (computers_play == 2 ? puts(p + cw) : puts(s + yw))
      again?
    when "paper"
      computers_play == 2 ? puts(p + t) : (computers_play == 3 ? puts(s + cw) : puts(r + yw))
      again?
    when "scissors"
      computers_play == 3 ? puts(s + t) : (computers_play == 1 ? puts(r + cw) : puts(p + yw))
      again?
    end
  sleep 1
end

def again?
  puts "\n\nAgain? yes or no"
  input = gets.chomp.downcase

  if input == "yes"
    main
  elsif input == "no"
    exit
  else
    "Come again?"
    again?
  end

end

main
again?


    

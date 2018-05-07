#Generate a random number
#Tell the user what's going on and ask for a guess
#Compare numbers and let the user know if they're right or wrong
#If the user's wrong, have them guess again and back to previous step

number = rand(1..100)
guess = ""

puts "I'm thinking of a number between 1 and 100."
while guess.to_i != number
  print "What is your guess? No (c)heating! "
  guess = gets.chomp
  if guess == "c"
    puts "**How about #{number}?**"
  elsif guess.to_i == 0 || guess.to_i > 100
    puts "No doofus, a number between 1 and 100!"
  elsif guess.to_i < number
    print "Too low! "
    if number % 5 == 0
      print "Hint: my number is divisible by 5. "
    elsif number % 2 == 0
      print "Hint: my number is even. "
    else
      print "Hint: my number is odd. "
    end
  elsif guess.to_i > number
    print "Too high! "
    if number % 5 == 0
      print "Hint: my number is divisible by 5. "
    elsif number % 2 == 0
      print "Hint: my number is even. "
    else
      print "Hint: my number is odd. "
    end
  else
    puts "You guessed the right number!"
  end
end

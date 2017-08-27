def random_number()
  number = rand(1..100)
end
def emptynil(guess)
  return true if guess.empty? || guess.nil?
  return false
end

previous_guesses = []
correct_number = random_number
counter = 0
puts"---------------------------------------------------------------|"
puts "------------------NUMBER GUESSING GAME------------------------|"
puts"---------------------------------------------------------------|"

puts "You have up to 5 chances to guess the right number!"
puts "What is your guess?"

loop do
  guess = gets.chomp
  if emptynil(guess)
    puts "Nothing has been entered as a number, please guess agin!"
  next
end

  if previous_guesses.include?(guess.to_i)
    puts "you just guessed the same number,Guess again!"

  elsif guess.to_i > correct_number.to_i
    puts "you guessed too high! Guess again!"
    previous_guesses << guess.to_i

  elsif guess.to_i < correct_number.to_i
    puts "you guessed too low! Guess again!"
    previous_guesses << guess.to_i

  elsif correct_number.to_i == guess.to_i
    puts "CONGRATULATION YOU WON!"
    break
  end
     counter += 1
  if counter == 5
    puts "SORRY YOU LOST!"
    break
  end
end

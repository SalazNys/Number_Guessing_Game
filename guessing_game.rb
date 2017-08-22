
puts "|---------------------|"
puts "|Number Guessing Game:|"
puts "|---------------------|"
puts " Please guess a number bewteen 1 and 100"
number = rand(1..100)
guess = gets.chomp. to_i
trial = 1
until guess == number || trial == 5 do
  if guess < number
    puts "you are low, try again"
  elsif guess > number
    puts "you are high, try again"
  end
  trial+= 1
  guess = gets.chomp.to_i
end
if (guess == number)
puts "You guessed #{number} in #{trial}
     attempt#{'s' if trial > 1}!"
else
  puts " sorry you lost after #{trial} unsuccessful attempts"
end


















# puts "|---------------------|"
# puts "|Number Guessing Game:|"
# puts "|---------------------|"
# puts " Please guess a number bewteen 1 and 100"
# number_guess = gets.chomp.to_i
# pn = rand(1..100)
# if(number_guess == pn)
#   puts "your guess is correct"
# else
#     while(number_guess < pn)
#        puts "Please pick again a random number between 1 and 100"
#        number_guess = gets.chomp.to_i
#        puts "you are too low"
#        while(number_guess > pn)
#           puts "Please pick again a random number between 1 and 100"
#           number_guess = gets.chomp.to_i
#           puts "you are too high"
#         end
#     end
#  end
# pn = rand(1..100).to_i
# if (number_guess<pn)
#   puts "you are lower"
#   puts "Please pick a random number between 1 and 100"
#   number_guess = gets.chomp.to_i
#   p number_guess
# elsif(number_guess<pn)
#   puts "you are higher"
#
# end

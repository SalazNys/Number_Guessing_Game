
def random_number
  rand(1..100)
end

def empty_or_nil?(guess)
  guess.empty? || guess.nil?
end

def same_number?(guess,previous_guesses)
  previous_guesses.include?(guess.to_i)
end

puts "|-------------------------------------------------------------------------|"
puts "|                     |  NUMBER GUESSING GAME:  |                         |"
puts "|-------------------------------------------------------------------------|\n\n"

puts "  HI MY NAME IS SALAZAR, WHAT IS YOUR NAME?"
name = gets.chomp
puts "WELCOME #{name.upcase} TO \"THE NUMBER GUESSING GAME\"\n\n"
puts "I HAVE CHOSEN A SECRET NUMBER AND YOU HAVE UP TO 5 ATTEMPS TO GUESS THE RIGHT NUMBER,"
puts "WHEN YOU GUESS WRONG I WILL GIVE YOU A HINT ALLOWING YOU TO TRY AGAIN, GOOD LUCK !!!"
puts "PLEASE GUESS A NUMBER BETWEEN 1 AND 100"
previous_guesses = []
attempt = 1
permitted_guesses = 5
right_number = random_number

while(attempt <= 5)
  permitted_guesses -= 1
  guess = gets.chomp

  if (guess.empty?)
    puts " NOTHING HAS BEEN GUESSED, YOU HAVE #{permitted_guesses} GUESS(ES) LEFT PLEASE ENTER A NUMBER !!!"
    next
  end

  if(same_number?(guess.to_i, previous_guesses))
    puts "BECAREFUL,YOU JUST GUESSED THE SAME NUMBER THAN THE PREVIOUS ONE"
    puts "YOU HAVE #{permitted_guesses} GUESS(ES) LEFT"
  end

  previous_guesses.push(guess.to_i)

  if guess.to_i == right_number
    puts "CONGRATULATION FOR WINNING ON YOUR ATTEMPT NUMBER #{attempt}, AND MY SECRET NUMBER WAS #{right_number}"
    break
  elsif attempt == 5
    puts "SORRY YOU LOST"
    break
  end

  if(guess.to_i < right_number )
    puts " YOU GUESSED TOO LOW AND YOU HAVE #{permitted_guesses} GUESS(ES) LEFT!!!"
    puts "PLEASE GUESS AGAIN"
  elsif (guess.to_i > right_number)
    puts " YOU GUESSED TOO HIGH AND YOU HAVE #{permitted_guesses} GUESS(ES) LEFT!!!"
    puts "PLEASE GUESS AGAIN"

  end

  attempt += 1
end

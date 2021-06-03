words = Array['apple', 'red', 'scroll', 'adventure', 'dragon', 'pineapple', 'pizza', 'music', 'arts', 'ants', 'wordgames', 'words', 'sentence', 'ruby']
secret_word =  words[rand(words.length).floor()]

guess = ""
amount_of_allowed_attempts = 6
amount_of_attempts = 0

print "\nSecret word: "

for i in 0..(secret_word.length - 1)

    if i == 0 or i == 1
        print (secret_word[i] + " ")
    else 
        print "_ "
    end
end

print "\nAllowed attempts: #{amount_of_allowed_attempts} \n\n"

while (guess.chomp() != secret_word) and (amount_of_attempts != amount_of_allowed_attempts)
    print "[#{amount_of_allowed_attempts-amount_of_attempts}] What is your guess? "
    guess = gets
    amount_of_attempts += 1
end

if guess.chomp() == secret_word
    puts "\nYou won!"
else
    puts "\nYou lost! :( \nThe secret word was: #{secret_word}"
end
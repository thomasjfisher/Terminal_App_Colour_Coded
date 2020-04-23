



# Pseudocode
# 1. menu ->  Instructions to play the game, explaining what the game is and how can the exit game
# 2. display a random colour ( text and color should n't match) - 3 sec
# 3. clear the screen
# 4. print a message
# 5. get user input (answer)
# 6. match user input with the answer
# 7. increment counter
#  7. if answer was correct show next with counter(2,3,4,5) question


# origin code  : non dry code
require 'colorize'
require 'colorized_string'

words= ["red", "green", "blue"]
colors = [:blue, :yellow, :green]

counter = 1
wrong_answer = 0
while counter <= 5 #true
        word = words.sample #red
        color = colors.sample  #yellow
		if word != color
            puts word.colorize(color)
            # figure out how to clear terminal
			puts "enter your guess"
			user_input = gets.chomp  #red
			if word == user_input
                puts "correct answer"
                counter += 1
                wrong_answer = 0
			else
                puts "wrong answer"
                # think how would you hadle wrong answers
                wrong_answer +=1
                if wrong_answer == 3
                    puts "game over"
                    break
                end
			end
		end
end
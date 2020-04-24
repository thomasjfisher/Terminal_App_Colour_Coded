



# # Pseudocode
# # 1. menu ->  Instructions to play the game, explaining what the game is and how can the exit game
# # 2. display a random colour ( text and color should n't match) - 3 sec
# # 3. clear the screen
# # 4. print a message
# # 5. get user input (answer)
# # 6. match user input with the answer
# # 7. increment counter
# #  7. if answer was correct show next with counter(2,3,4,5) question


# origin code  : non dry code
require 'colorize'
require 'colorized_string'


def clear_terminal
	Gem.win_platform? ? (system "cls") : (system "clear")
	
end

  
clear_terminal
puts "Welcome"
sleep 1
clear_terminal
puts "To"
sleep 1
clear_terminal
puts "Colour Coded"
sleep 3
puts "Would you like to play? [y/n]"
user_play = gets.chomp
	if user_play == 'n'	
	exit
	end
words= ["red", "green", "blue"]
colors = [:black, :light_black, :red, :light_red, :green, :light_green, :yellow, :light_yellow, :blue, :light_blue, :magenta, :light_magenta, :cyan, :light_cyan]
counter = 1
wrong_answer = 0
guess_count = 1

#defining method to clear the terminal
def clear_terminal
	Gem.win_platform? ? (system "cls") : (system "clear")
	
 end

	while counter <= 5 #true
    	word = words.sample #red
		color = colors.sample  #yellow
		
		if word != color 
			puts "The word to remember is ..."
			sleep 2
			clear_terminal
			puts word.colorize(color)
			sleep 1
			clear_terminal			
           	puts "Please enter your guess!"
			user_input = gets.chomp 

			if word == user_input 
				puts "Well done! Keep it up!"
				sleep 1
				clear_terminal
                counter += 1
				wrong_answer = 0
				guess_count = 1
			else
				puts "Oh no! That's not right!"
				sleep 1
				clear_terminal
				puts "Guess Count: #{guess_count} of 3!"
				sleep 1
				clear_terminal
                # think how would you hadle wrong answers
				wrong_answer +=1
				guess_count +=1
                if wrong_answer == 3
					puts "game over"
					sleep 2
					clear_terminal
					puts "Would you like to play again? [y/n]"
					play_again = gets.chomp
						if play_again == 'y'
							guess_count = 1
							next
						elsif
							play_again == 'n'
							puts "Goodbye!"
						else
							puts "Please enter a valid command [y/n]"
						end	
					else
                end
			end
		end
	end

	

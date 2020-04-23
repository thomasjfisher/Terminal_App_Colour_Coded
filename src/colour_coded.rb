



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
# ------ Menu
# play_again = y
# while play_again == y
# def yes? response
# 	case response
# 	  when "y", "Y", "yes", "Yes", "YES"
# 		return true
# 	  when "n", "N", "no", "No", "NO"
# 		return false
# 	  else
# 		puts "Please enter yes or no:".colorize(:light_red)
# 		yes?(gets.chomp)
# 	end
  
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

words= ["red", "green", "blue"]
colors = [:blue, :yellow, :green,]
colors = [:black, :light_black, :red, :light_red, :green, :light_green,
			:yellow, :light_yellow, :blue, :light_blue, :magenta, :light_magenta, :cyan, :light_cyan]
counter = 1
wrong_answer = 0

#defining method to clear the terminal
def clear_terminal
	Gem.win_platform? ? (system "cls") : (system "clear")
	
 end

		while counter <= 5 #true
        word = words.sample #red
		color = colors.sample  #yellow
		
		if word != color
			puts word.colorize(color)
			sleep 1
			clear_terminal
			
            # figure out how to clear terminal
			puts "enter your guess"
			user_input = gets.chomp  #red
			if word == user_input
				puts "correct answer"
				sleep 1
				clear_terminal
                counter += 1
                wrong_answer = 0
			else
                puts "wrong answer"
                # think how would you hadle wrong answers
                wrong_answer +=1
                if wrong_answer == 3
					puts "game over"
					clear_terminal
					puts "Would you like to play again? [y/n]"
					play_again = gets.chomp

					if play_again == 'n'
					break
					else
                end
			end
		end
	end
end
	

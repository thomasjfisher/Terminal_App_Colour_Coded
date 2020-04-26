# # Pseudo Code:

# # # 1. menu ->  Instructions to play the game, explaining what the game is and how can the exit game
# # # 2. display a random colour ( text and color should n't match) - 3 sec
# # # 3. clear the screen
# # # 4. print a message
# # # 5. get user input (answer)
# # # 6. match user input with the answer
# # # 7. increment counter
# # #  7. if answer was correct show next with counter(2,3,4,5) question


# # # print to screen the coloured word. 
# # #     then wipe screen.
# #         clear terminal
# # # gets user input
# # # check it against coloured word
# # #     ask, what word was printed?
# # #     what colour was the printed word?
# # # if correct LOOP
# # #     if wrong END GAME
# # # when looping, +=1 to add another word.
# # #     then print 2 words.
# # #     keep looping to make game harder
# # loop where words = 0
# # then +=1

# # cursor.invisible
# # me



# # words = [ {'"red.colorize => red}"']
# # has to be stored as a key
# # array of hashes

# # words = ["red"erc]
# # colour = [:blue]

# # if and else if they match

# #     of words.sample !=

# #     q1
# #     q2
# #     c1
# #     c2

# # case method


# #    def choose_questions(counter)
# #         case counter
# #         when 1


# #                 words_1 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
# #                 colors_1 = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
# #                 words_2 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
# #                 colors_2 = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
# #                 words_3 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
# #                 colors_3 = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
# #                 words_4 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
# #                 colors_4 = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
# #                 words_5 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
# #                 colors_5  = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
# # -----------------------

# # # # require 'colorize'
# # # # require 'colorized_string'

# # # # words = ["red".colorize(:blue),"red".colorize(:green), "red".colorize(:red),
# # # #          "red".colorize(:black), "blue".colorize(:yellow), "yellow".colorize(:green),
# # # #          "green".colorize(:red), "purple".colorize(:black), "brown".colorize(:magenta),
# # # #          "pink".colorize(:cyan)].shuffle.first
# # # # puts words
# # # # # # colours = [.colorize(:red), .colorize(:blue), .colorize(:yellow), .colorize(:green)].shuffle.first
# # # # # # puts colours

# # # # # p String.colors 

# # # coloured_word = "Red"
# # # guess = ""
# # # guess_count = 0
# # # guess_limit = 3
# # # out_of_guesses = false
# # # p coloured_word


# # # puts "Enter your guess! You have 3 guesses! Use them wisely"

# # # while guess != coloured_word and !out_of_guesses
	
		
# # # 	if guess_count < guess_limit
# # # 		guess = gets.chomp.capitalize()
# # # 		guess_count +=1
		
# # # 			if
# # # 				guess_count == 1
# # # 				puts "Ok, 2 more tries! We can do this!"
# # # 			elsif
# # # 				guess_count == 2
# # # 				puts "Alright. You're scaring me now, 1 more guess!!"
# # # 			elsif
# # # 				guess_count == 3
# # # 				puts "I said use them wisely!!!"
# # # 			elsif 
# # # 				guess == true
# # # 				next
# # # 			end
# # # 		# puts "You have used #{guess_count} of 3 guesses!"
# # # 		else 
# # # 			out_of_guesses = true
# # # 		end
	
# # # end

# # # 	if out_of_guesses
# # # 		puts "You lose. :("
# # # 	else 
# # # 		puts "You Won!"
# # # 	end


# # ------------------------------------------------------------------------------------------------------------------------------------------
# # ------------------------------------------------------------------------------------------------------------------------------------------
# # ------------------------------------------------------------------------------------------------------------------------------------------
# # ------------------------------------------------------------------------------------------------------------------------------------------
# # ------------------------------------------------------------------------------------------------------------------------------------------
# require 'colorize'
# require 'colorized_string'
# require 'tty-prompt'
# require 'tty-cursor'
# require 'launchy'
# # # require 'lolize/auto'


# prompt = TTY::Prompt.new

# # This command below is allowing me to call to clear my terminal.
# def clear_terminal
# 	Gem.win_platform? ? (system "cls") : (system "clear")
	
# end
  
# clear_terminal
# puts "Welcome"
# sleep 1
# clear_terminal
# puts "To"
# sleep 1
# clear_terminal

# puts "
# 	 ____ ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ 
# 	||C |||O |||L |||O |||U |||R |||       |||C |||O |||D |||E |||D ||
# 	||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||
# 	|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|"
# sleep 3
# puts
# puts "Would you like to play? [y/n]"
# #Command below is saying whilst the user input is not 'y' or 'n', loop until I get a 'y' or 'n'
# user_play = gets.chomp.downcase
# 	while user_play != 'y'	&& user_play != 'n'
# 	puts "Invlaid command."
# 	puts "Would you like to play? [y/n]"
# 	user_play = gets.chomp.downcase
# 	end
# if user_play != 'y'
# 	exit
# end
# words= %w[red green blue yellow pink purple orange]
# colors = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
# counter = 0
# wrong_answer = 0
# guess_count = 1


# 	while counter < 5
#     	word = words.shuffle 
# 		color = colors.sample  
# 		word = word[0..counter].join(" ")
		
# 		if word != color 
# 			clear_terminal
# 			puts "Let's do this"
# 			sleep 1			
# 			puts		
# 			clear_terminal	
# 			puts "Remember to remember..."
# 			puts
# 			sleep 2
# 			print word.colorize(color) + " "
			
# 			sleep 1
# 			# clear_terminal			
# 			   puts "Please enter your guess!"
# 			   puts
# 			user_input = gets.chomp.downcase
# 			puts

# 			if word == user_input 
# 				grats = ["Hmm, have you done this before?",	"Hey! No peeking! Oh wait, no... I guess thats allowed...", "beep beep bop bo boop", "Woah, how'd you get that?", "nice", "Oh, and here I thought it was: up up down zero zero back?", "Still going hey?"].shuffle
# 				puts grats[0]
# 				puts
# 				sleep 3
# 				# clear_terminal
#                 counter += 1
# 				wrong_answer = 0
# 				guess_count = 1
# 			else
# 				nope = ["(´。＿。｀)", '(¬_¬")', "(╯°□°）╯︵ ┻━┻", "(* ￣︿￣)"].shuffle
# 				puts nope[0]
# 				puts 
				
# 				sleep 1
# 				puts "Uh oh! That is incorrect!"
# 				puts
# 				sleep 1
# 				# clear_terminal
# 				puts "Guess Count: #{guess_count} of 3!"
# 				puts
# 				sleep 1
# 				# clear_terminal
                
# 				wrong_answer +=1
# 				guess_count +=1
			

#                 if wrong_answer == 3
# 					puts "Game Over (っ °Д °;)っ " #* 550
# 					sleep 5
# 					counter = 0
				
# 				elsif counter == 5
# 					puts "You Won! (‾◡◝) " #* 550					
# 					sleep 2
# 					puts
				
# 					puts "Would you like to play again? [y/n]"
# 					puts
# 					play_again = gets.chomp.downcase
# 						while play_again != 'y'	&& play_again != 'n'
# 							puts "Invlaid command."
# 							puts "Would you like to play again? [y/n]"
# 							user_play = gets.chomp.downcase
# 						end
# 								if play_again == 'y'								
# 									puts "Let's go again!"
# 									counter = 0
# 								elsif play_again != 'y'
# 									puts "Thanks for playing"
# 									sleep 1
# 									puts
# 									puts "
# 									____ ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ 
# 									||C |||O |||L |||O |||U |||R |||       |||C |||O |||D |||E |||D ||
# 									||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||
# 									|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|"
# 									sleep 3
# 									exit
# 						end
# 					end
# 				end	
# 			end
# 		end 
	


		
	
			

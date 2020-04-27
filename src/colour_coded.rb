require 'tty-prompt'
require 'tty-cursor'
require 'launchy'
require 'lolize/auto'

module ColourCodedGame
	def grats
		cheeky_grats =["Hmm, have you done this before?",	"Hey! No peeking! Oh wait, no... I guess thats allowed...", "beep beep bop bo boop", "Woah, how'd you get that?", "nice", "Oh, and here I thought it was: up up down zero zero back?", "Still going hey?"].shuffle
		puts cheeky_grats[0]
		puts	
	end

	def nope
		cheeky_nope = ["(´。＿。｀)", '(¬_¬")', "(╯°□°）╯︵ ┻━┻", "(* ￣︿￣)"].shuffle
		puts cheeky_nope[0]
		puts 
	end

	def cc_keyboard
		puts "
		 ____ ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ 
		||C |||O |||L |||O |||U |||R |||       |||C |||O |||D |||E |||D ||
		||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||
		|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|"
	end

	def tom_sleep(number)
		if DEBUG
			return
		end
		sleep(number)
		puts
	end




#used debug to move through the code faster when trying to debug, it held the sleeps and clear_terminals.
#when set to nil, the code will run as normal. if given a true value the code will skip certain parts.
	DEBUG = nil

	def run_game
		# This command below is allowing me to call to clear my terminal.
		def clear_terminal
			Gem.win_platform? ? (system "cls") : (system "clear")	
		end

	clear_terminal
	# Asking my user their name before they start!
	name = (ARGV.length > 0) && ARGV[0]
	if !name
		puts "Hi! Before we get started, what is your name?"
		name = gets.chomp
	end
	tom_sleep 1
	clear_terminal
	puts "Welcome"
	tom_sleep 1
	puts "To"
	tom_sleep 1
	cc_keyboard
	tom_sleep 3
	puts
	#Command below is saying whilst the user input is not 'y' or 'n', loop until I get a 'y' or 'n'
	puts "Are you ready to start, #{name}? [y/n]"
	user_play = gets.chomp.downcase
	while user_play != 'y'	&& user_play != 'n'
		puts "Invlaid command."
		puts "Are you ready to start? [y/n]"
		user_play = gets.chomp.downcase
	end
	if user_play != 'y'
		puts "See you again soon!"
		exit
	end
	#Below are the words that will print to the screen
	words= %w[red green blue yellow pink purple orange]
	colors = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
	counter = 0
	wrong_answer = 0
	guess_count = 1
	correct_guesses_needed = 5

	while counter < 5
		word = words.shuffle 
		color = colors.sample  
		word = word[0..counter].join(" ")
			#if the word does not match the coulour of the words( red != red) it will go through with the code	
		if word != color 
			clear_terminal
			puts "Let's do this"
			tom_sleep 1			
			puts		
			clear_terminal	
			puts "Remember to remember..."

			if DEBUG
				p counter
				p wrong_answer
				p guess_count
			end			
			tom_sleep 2
			print word + " "		
			tom_sleep 1
			if DEBUG == nil
				clear_terminal	
			end
					
			puts "Please enter your guess!"
			puts
			user_input = gets.strip.downcase
			puts
			if DEBUG
				user_input = word
			end
			if word == user_input 				
				grats
				tom_sleep 3
				clear_terminal
				counter += 1
				wrong_answer = 0
				guess_count = 1
			else
				nope 
				tom_sleep 1
				puts "Uh oh! That is incorrect!"
				puts
				tom_sleep 1
				clear_terminal
				puts "Guess Count: #{guess_count} of 3!"
				puts
				tom_sleep 1
				clear_terminal							
				wrong_answer +=1
				guess_count +=1
			end
			#here it will check if the user has won or lost. the game will end and ask the user if they want to play again.
			if wrong_answer == 3
				puts "Game Over! (っ °Д °;)っ " * 100
				tom_sleep 5
			end
						
			if counter == correct_guesses_needed
				puts "You Won! (‾◡◝) " * 100								
				tom_sleep 5
			end

			if wrong_answer == 3 || counter == correct_guesses_needed
				puts "Would you like to play again? [y/n]"
				puts
				play_again = gets.chomp.downcase
				#it will not accept 
				while play_again != 'y'	&& play_again != 'n'
					puts "Invlaid command."
					puts "Would you like to play again? [y/n]"
					play_again = gets.chomp.downcase		
				end

				if play_again == 'y'								
					puts "Let's go again!"
					counter = 0
					wrong_answer = 0
					guess_count = 1
				elsif play_again != 'y'
					puts "Thanks for playing"
					puts
					cc_keyboard
					puts
					tom_sleep 1
					puts
					tom_sleep 1
					puts
					tom_sleep 5
					exit
				end	
			end
		end
	end
end
end


			
		
			

require 'colorize'
require 'colorized_string'
require 'tty-prompt'
require 'tty-cursor'
require 'launchy'
require 'lolize/auto'


prompt = TTY::Prompt.new

def clear_terminal
	Gem.win_platform? ? (system "cls") : (system "clear")
	
end
  
# clear_terminal
# puts "Welcome"
# sleep 1
# clear_terminal
# puts "To"
# sleep 1
# clear_terminal
puts "
	____ ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ 
	||C |||O |||L |||O |||U |||R |||       |||C |||O |||D |||E |||D ||
	||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||
	|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|"
# sleep 3
puts
puts "Would you like to play? [y/n]"
user_play = gets.chomp.downcase
	while user_play != 'y'	&& user_play != 'n'
	puts "Invlaid command."
	puts "Would you like to play? [y/n]"
	user_play = gets.chomp.downcase
	end
if user_play != 'y'
	exit
end
words= %w[red green blue yellow pink purple orange]
colors = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
counter = 0
wrong_answer = 0
guess_count = 1

def clear_terminal
	Gem.win_platform? ? (system "cls") : (system "clear")
end

	while counter < 5
    	word = words.shuffle 
		color = colors.sample  
		word = word[0..counter].join(" ")
		
		if word != color 
			clear_terminal
			puts "Alright, now, all you have to do is..."
			sleep 1			
			puts			
			puts "Remember to remember..."
			sleep 2
			clear_terminal
			sleep 1
			print word.colorize(color) + " "
			
			sleep 1
			clear_terminal			
           	puts "Please enter your guess!"
			user_input = gets.chomp.downcase

			if word == user_input 
				grats = ["Hmm, have you done this before?",	"Hey! No peeking! Oh wait, no... I guess thats allowed...", "beep beep bop bo boop", "Woah, how'd you get that?", "nice", "Oh, and here I thought it was: up up down zero zero back?", "Still going hey?"].shuffle
				puts grats[0]
				sleep 3
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
                
				wrong_answer +=1
				guess_count +=1
			

                if wrong_answer == 3
					puts "Game Over " * 550
					sleep 5
					counter = 0
				
				elsif counter >= 5
					puts "You Won! " * 550
				
					
					sleep 2
					puts
				
					puts "Would you like ot play again? [y/n]"
					puts
					play_again = gets.chomp.downcase
						while play_again != 'y'	&& play_again != 'n'
						puts "Invlaid command."
						puts "Would you like to play again? [y/n]"
						user_play = gets.chomp.downcase
						
						if play_again != 'y'
							puts "Thanks for playing"
							sleep 1
							puts
							puts "
							____ ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ 
							||C |||O |||L |||O |||U |||R |||       |||C |||O |||D |||E |||D ||
							||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||
							|/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|"
							sleep 3
							exit
						end
					end
				end	
			end
		end 
	end
		
	
			

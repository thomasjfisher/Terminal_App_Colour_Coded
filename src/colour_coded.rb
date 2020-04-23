# require 'colorize'
# require 'colorized_string'

# words = ["red".colorize(:blue),"red".colorize(:green), "red".colorize(:red),
#          "red".colorize(:black), "blue".colorize(:yellow), "yellow".colorize(:green),
#          "green".colorize(:red), "purple".colorize(:black), "brown".colorize(:magenta),
#          "pink".colorize(:cyan)].shuffle.first
# puts words
# # # colours = [.colorize(:red), .colorize(:blue), .colorize(:yellow), .colorize(:green)].shuffle.first
# # # puts colours

# # p String.colors 

coloured_word = "Red"
guess = ""
guess_count = 0
guess_limit = 3
out_of_guesses = false
p coloured_word


puts "Enter your guess! You have 3 guesses! Use them wisely"

while guess != coloured_word and !out_of_guesses
	
		
	if guess_count < guess_limit
		guess = gets.chomp.capitalize()
		guess_count +=1
		
			if
				guess_count == 1
				puts "Ok, 2 more tries! We can do this!"
			elsif
				guess_count == 2
				puts "Alright. You're scaring me now, 1 more guess!!"
			elsif
				guess_count == 3
				puts "I said use them wisely!!!"
			elsif 
				guess == true
				next
			end
		# puts "You have used #{guess_count} of 3 guesses!"
		else 
			out_of_guesses = true
		end
	
end

	if out_of_guesses
		puts "You lose. :("
	else 
		puts "You Won!"
	end


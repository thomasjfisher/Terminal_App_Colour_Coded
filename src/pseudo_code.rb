



# # Pseudocode
# # 1. menu ->  Instructions to play the game, explaining what the game is and how can the exit game
# # 2. display a random colour ( text and color should n't match) - 3 sec
# # 3. clear the screen
# # 4. print a message
# # 5. get user input (answer)
# # 6. match user input with the answer
# # 7. increment counter
# #  7. if answer was correct show next with counter(2,3,4,5) question


# print to screen the coloured word. 
#     then wipe screen.
        clear terminal
# gets user input
# check it against coloured word
#     ask, what word was printed?
#     what colour was the printed word?
# if correct LOOP
#     if wrong END GAME
# when looping, +=1 to add another word.
#     then print 2 words.
#     keep looping to make game harder
loop where words = 0
then +=1

cursor.invisible
me



words = [ {'"red.colorize => red}"']
has to be stored as a key
array of hashes

words = ["red"erc]
colour = [:blue]

if and else if they match

    of words.sample !=

    q1
    q2
    c1
    c2

case method


   def choose_questions(counter)
        case counter
        when 1


                words_1 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
                colors_1 = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
                words_2 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
                colors_2 = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
                words_3 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
                colors_3 = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
                words_4 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
                colors_4 = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
                words_5 = ["Red", "Green", "Blue", "Brown", "Pink", "Purple", "Orange"]
                colors_5  = [:black, :light_black, :red, :green, :yellow, :blue, :magenta, :light_magenta, :cyan, :light_cyan]
-----------------------

# # require 'colorize'
# # require 'colorized_string'

# # words = ["red".colorize(:blue),"red".colorize(:green), "red".colorize(:red),
# #          "red".colorize(:black), "blue".colorize(:yellow), "yellow".colorize(:green),
# #          "green".colorize(:red), "purple".colorize(:black), "brown".colorize(:magenta),
# #          "pink".colorize(:cyan)].shuffle.first
# # puts words
# # # # colours = [.colorize(:red), .colorize(:blue), .colorize(:yellow), .colorize(:green)].shuffle.first
# # # # puts colours

# # # p String.colors 

# coloured_word = "Red"
# guess = ""
# guess_count = 0
# guess_limit = 3
# out_of_guesses = false
# p coloured_word


# puts "Enter your guess! You have 3 guesses! Use them wisely"

# while guess != coloured_word and !out_of_guesses
	
		
# 	if guess_count < guess_limit
# 		guess = gets.chomp.capitalize()
# 		guess_count +=1
		
# 			if
# 				guess_count == 1
# 				puts "Ok, 2 more tries! We can do this!"
# 			elsif
# 				guess_count == 2
# 				puts "Alright. You're scaring me now, 1 more guess!!"
# 			elsif
# 				guess_count == 3
# 				puts "I said use them wisely!!!"
# 			elsif 
# 				guess == true
# 				next
# 			end
# 		# puts "You have used #{guess_count} of 3 guesses!"
# 		else 
# 			out_of_guesses = true
# 		end
	
# end

# 	if out_of_guesses
# 		puts "You lose. :("
# 	else 
# 		puts "You Won!"
# 	end

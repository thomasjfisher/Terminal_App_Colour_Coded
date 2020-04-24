require 'colorize'
require 'colorized_string'


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
# puts "Colour Coded"
# sleep 2
# clear_terminal
# sleep 1
puts "Would you like to do?"
sleep 1

puts "1. Play Game"
puts "2. Read Rules"
puts "3. Quit"
sleep 1
puts "Enter your selection [1,2,3]"
user_main_menu_select = gets.to_i

if user_main_menu_select == 1
    puts "GET READY!"
elsif user_main_menu_select == 2
    puts "Rules"
else user_main_menu_select == 3
    exit
end
# puts "1. Play Colour Coded"
# puts "2. See 'Rules"
# puts "3. Quit"

# user_play = gets.chomp

# if user_play == 1
#     puts "Play the game!"
# elsif user_play == 2
#     puts "Here are the rules"
# elsif user_play == 3
#     puts "Cya next time!" 
# end
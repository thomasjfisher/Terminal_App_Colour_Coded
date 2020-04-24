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
user_main_menu_select = ""
while user_main_menu_select !=3

    puts "Would you like to do?"
    sleep 1
    puts
    puts "1. Play Game"
    puts
    puts "2. Read Rules"
    puts
    puts "3. Quit"
    sleep 1
    puts "Please enter your selection: [1,2,3]"
    user_main_menu_select = gets.to_i
    sleep 1

    if user_main_menu_select == 1
        puts "GET READY!"
        sleep 1
    elsif user_main_menu_select == 2
        puts "Rules"
        sleep 1
    elsif user_main_menu_select == 3
        exit
    else
        clear_terminal
        puts "Please enter a valid selection: [1,2,3]"
        sleep 2
        
    end
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
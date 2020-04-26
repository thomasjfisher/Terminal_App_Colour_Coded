require 'colorize'
require 'colorized_string'
require 'tty-prompt'
require 'tty-cursor'
require 'lolize/auto'

cursor = TTY::Cursor

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
    
    
    puts "What would you like to do?"
    sleep 1
    puts
    puts "1. Play Game"
    puts
    puts "2. Read Rules"
    puts
    puts "3. Quit"
    puts 
    puts "Please enter your selection: [1,2,3]"
    puts 
   
    user_main_menu_select = gets.to_i
    sleep 1

    if user_main_menu_select == 1
        puts "GET READY!"
        sleep 1
    elsif user_main_menu_select == 2
       clear_terminal
        puts "Welcome to"
        sleep 1
        puts  "
        ____ ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ 
        ||C |||O |||L |||O |||U |||R |||       |||C |||O |||D |||E |||D ||
        ||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||
        |/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|"
        puts
        sleep 1
        puts "Here are the rules!"
        puts 
        sleep 1
        puts "The aim of the game is to remember the sequence of words displayed across your screen"
        sleep 3
        puts
        puts "You have 3 attempts to input your guess correctly"
        sleep 3
        puts
        puts "If you unfortunately do not guess the sequence correctly, after 3 wrong guesses"
        sleep 3
        puts
        puts "the game will end, and you will be asked if you would like to play again."
        sleep 10
        clear_terminal
        
    elsif user_main_menu_select == 3
        puts "Goodbye from"
        sleep 1
        puts "
        ____ ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ 
        ||C |||O |||L |||O |||U |||R |||       |||C |||O |||D |||E |||D ||
        ||__|||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||
        |/__\\|/__\\|/__\\|/__\\|/__\\|/__\\|/_______\\|/__\\|/__\\|/__\\|/__\\|/__\\|"
        sleep 1
        puts 
        puts "We hope to see you soon!"
        sleep 1
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
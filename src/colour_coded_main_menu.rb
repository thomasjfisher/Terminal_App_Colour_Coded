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
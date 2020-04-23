require 'colorize'
require 'colorized_string'

# # puts String.modes
# puts "hello world".colorize(:magenta)
# puts ColorizedString["This is blue text on red"].black.on_red.blink
# puts ColorizedString.colors        
# words = ["RED".colorize(:red,)]
# puts words.each
words = ["red", "blue", "yellow", "green"].shuffle.first
puts words
colours = [.colorize(:red), .colorize(:blue), .colorize(:yellow), .colorize(:green)].shuffle.first
puts colours
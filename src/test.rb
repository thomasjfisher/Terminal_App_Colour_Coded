require 'test/unit'

# class CustomerTest < Test::Unit::TestCase
#   def test_first_name
#     customer = Customer.new('John', 'Smith')
#     assert_equal('John', customer.test_first_name)
#   end
# end

# def menu_selection
#     puts "What would you like to do?"
#     puts "1. Play Game"
#     puts "2. Read Rules"
#     puts "3. Quit"
#     puts "Please enter your selection: [1,2,3]"
#     print '>'
#     selection = gets.chomp
#     validate_select(selection)
#     rescue InvalidInputError => e 
#       puts "Invalid command. Try again."
#     retry
#   end


# user_selection = menu_selection

def ask_for_name
  # 1. Ask for user input
  puts 'Please enter your name:'
  print '> '
  name = gets.chomp
  # 2. Validate and return name
  validate_name(name)
 rescue InvalidNameError => e
  # 3. validate_name() raised error!
  puts 'Invalid name. Please try again.'
  retry # Go back to 1.
 end
 username = ask_for_name
 



# end
# user_main_menu_select = ""
# while user_main_menu_select !=3    
    
#     puts "What would you like to do?"
#     puts "1. Play Game"
#     puts "2. Read Rules"
#     puts "3. Quit"
#     puts "Please enter your selection: [1,2,3]"
  
# user_main_menu_select = gets.to_i
# sleep 1

# if user_main_menu_select == 1
#   puts "play"
        
# elsif user_main_menu_select == 2
  
#   puts "display rules"
    
# elsif user_main_menu_select == 3
#     puts "Goodbye from"
# else
#     puts "Please enter a valid selection: [1,2,3]"
#     sleep 2
# end
# end
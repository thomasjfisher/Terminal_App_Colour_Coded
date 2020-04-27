require 'test/unit'

class UserSelect < Test::Unit::TestCase  

  def test_play  
    user_select = do_user_input(1) 
    assert_equal('play',user_select)
  end
  def test_rules
    user_select = do_user_input(2)
    assert_equal('rules',user_select)
  end
  def test_quit
    user_select = do_user_input(3)
    assert_equal('quit',user_select)
  end
  def test_invalid_response
    user_select = do_user_input("yes")
    assert_equal("Invalid", user_select)
    user_select = do_user_input("3")
    assert_not_equal("Invalid", user_select)
  end

end

def do_user_input(user_main_menu_select)
  user_main_menu_select = user_main_menu_select.to_i

  if user_main_menu_select == 1
    return "play"
  elsif user_main_menu_select == 2
    return "rules"
  elsif user_main_menu_select == 3
    return 'quit'
   
    else
    return "Invalid"
  end
end

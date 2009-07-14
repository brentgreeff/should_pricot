require File.dirname(__FILE__) + '/test_helper.rb' 

class ShouldPricotTest < ActionController::TestCase
  
  private
  
  def deny(expected_to_be_false, message = '')
    assert ! expected_to_be_false, message
  end
  
end

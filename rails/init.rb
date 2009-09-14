if RAILS_ENV.eql? 'test'
  require 'test_help'
  require 'hpricot'
  
  require File.join(File.dirname(__FILE__), "lib", "should_pricot")
  require File.join(File.dirname(__FILE__), "lib", "should_pricot", "count_assertion")
  require File.join(File.dirname(__FILE__), "lib", "should_pricot", "element_assertion")
  
  ActiveSupport::TestCase.send(:include, ShouldPricot)
end

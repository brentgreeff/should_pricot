require 'rails/test_help'
require 'hpricot'

require File.join(File.dirname(__FILE__), "should_pricot", "count_assertion")
require File.join(File.dirname(__FILE__), "should_pricot", "element_assertion")
require File.join(File.dirname(__FILE__), "should_pricot", "test_helper_methods")

ActiveSupport::TestCase.send(:include, ShouldPricot::TestHelperMethods)

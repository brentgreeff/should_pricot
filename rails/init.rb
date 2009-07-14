if RAILS_ENV.eql? 'test'
  require 'test_help'
  require 'hpricot'
  require 'should_pricot'
  
  ActiveSupport::TestCase.send(:include, ShouldPricot)
end

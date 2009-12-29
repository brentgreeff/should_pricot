module ShouldPricot
  class ElementAssertion
    def initialize(selector, html, test_instance)
      @selector = selector
      @test = test_instance
      @element = html.at(selector)
    end
    
    def should_be(expected)
      should_be_present
      
      if expected.is_a? Regexp
        assert_match expected, @element.inner_html.strip
      else
        assert_equal expected, @element.inner_html.strip
      end
    end
    
    def should_contain(expected)
      should_be_present
      
      assert_match expected, @element.inner_html.strip
    end
    
    def should_be_present
      assert @element.is_a?(Hpricot::Elem), "element : '#{@selector}' is missing"
    end
    
    def should_be_missing
      assert @element.nil?, "element : '#{@selector}' is present"
    end
    
    private
    
    def method_missing(method, *args)
      @test.send method, *args
    end
  end
end

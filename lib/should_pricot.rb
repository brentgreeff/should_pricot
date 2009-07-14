module ShouldPricot
  
  def element(selector)
    ElementAssertion.new(selector, html, self)
  end
  
  def count(selector)
    CountAssertion.new(selector, html, self)
  end
  
  private
  
  def html
    @html || @html = Hpricot(@response.body)
  end
  
  class ElementAssertion
    def initialize(selector, html, test_instance)
      @selector = selector
      @test_instance = test_instance
      @element = html.at(selector)
    end
    
    def should_be(expected)
      should_be_present
      assert_equal expected, @element.inner_html.strip
    end
    
    def should_be_present
      assert @element.is_a?(Hpricot::Elem), "element : '#{@selector}' is missing"
    end
    
    def should_be_missing
      assert @element.nil?, "element : '#{@selector}' is present"
    end
    
    private
    
    def method_missing(method, *args)
      @test_instance.send method, *args
    end
  end
  
  class CountAssertion
    def initialize(selector, html, test_instance)
      @test_instance = test_instance
      @elements = (html/selector)
    end
    
    def should_be(expected)
      assert_equal expected, @elements.size
    end
    
    private
    
    def method_missing(method, *args)
      @test_instance.send method, *args
    end
  end
  
end

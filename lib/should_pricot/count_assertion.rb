module ShouldPricot
  class CountAssertion
    def initialize(selector, html, test_instance)
      @test = test_instance
      @elements = (html/selector)
    end
    
    def should_be(expected)
      @test.assert_equal expected, @elements.size
    end
  end
end

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
  
end

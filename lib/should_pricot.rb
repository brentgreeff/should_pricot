module ShouldPricot
  
  def element(selector, passed_html = nil)
    @passed_html = passed_html
    ElementAssertion.new(selector, get_html, self)
  end
  
  def count(selector, passed_html = nil)
    @passed_html = passed_html
    CountAssertion.new(selector, get_html, self)
  end
  
  private
  
  def get_html
    return Hpricot(@passed_html) if @passed_html
    @html || @html = Hpricot(@response.body)
  end
  
end

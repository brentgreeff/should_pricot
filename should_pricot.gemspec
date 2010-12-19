Gem::Specification.new do |s|
  s.name = %q{should_pricot}
  s.version = "3.0.0"
  
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brent Greeff"]
  s.date = %q{2010-10-30}
  s.description = %q{Rails testing assertions for checking your html is generated correctly.}
  s.email = %q{email@brentgreeff.com}
  s.extra_rdoc_files = [
    "MIT-LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "MIT-LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/should_pricot.rb",
    "lib/should_pricot/count_assertion.rb",
    "lib/should_pricot/element_assertion.rb",
    "lib/should_pricot/test_helper_methods.rb",
    "test/should_pricot_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/brentgreeff/should_pricot}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Rails testing assertions for checking your html is generated correctly.}
end

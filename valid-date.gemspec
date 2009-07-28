SPEC = Gem::Specification.new do |s|
  s.name = "valid-date"
  s.version = "1.1.0"
  s.author = "Patrick Byrne"
  s.email = "code@patrickbyrne.net"
  s.homepage = "http://github.com/pbyrne/valid-date/"
  s.summary = "Adds String#valid_date? method to add utility to the Rails String#to_date method. Determines whether the string contains a valid date, to check before converting to a date and avoiding an exception."
  s.platform = Gem::Platform::RUBY
  s.files = ["lib/valid-date.rb"]
  s.require_path = "lib"
  # todo figure out whether to use a different parameter than s.test_file since i'm using rspec (does it really assume Test::Unit?)
  s.test_file = "spec/valid-date_spec.rb"
  s.has_rdoc = true
  s.extra_rdoc_files = ["README"]
  s.add_dependency("activesupport")
end

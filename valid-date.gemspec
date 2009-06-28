require 'rubygems'
SPEC = Gem::Specification.new do |s|
  s.name = "valid-date"
  s.version = "1.0.0"
  s.author = "Patrick Byrne"
  s.email = "code@patrickbyrne.net"
  s.homepage = "http://patrickbyrne.net/"
  s.summary = "Adds String#valid_date? method to add utility to the Rails String#to_date method. Determines whether the string contains a valid date, to check before converting to a date and avoiding an exception."
  s.platform = Gem::Platform::RUBY
  # todo figure out what this candidates thing really does and what i should put in
  candidates = Dir.glob("{lib,spec}/**/*")
  s.files = candidates.delete_if do |item|
    item.include?("CVS") || item.include?("rdoc")
  end
  s.require_path = "lib"
  # todo figure out whether to use a different parameter than s.test_file since i'm using rspec (does it really assume Test::Unit?)
  s.test_file = "spec/valid-date_spec.rb"
  # todo figure out whether the README in rdoc means has_rdoc should be true
  s.has_rdoc = false
  s.extra_rdoc_files = ["README"]
  s.add_dependency("activesupport")
end

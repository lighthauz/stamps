# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "stamps/version"

Gem::Specification.new do |s|
  s.name        = "stamps"
  s.version     = Stamps::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matt Sears"]
  s.email       = ["matt@mattsears.com"]
  s.homepage    = "http://rubygems.org/gems/stamps"
  s.summary     = %q{Ruby wrapper for the Stamps.com Web Services API}
  s.description = %q{Stamps is Stamps.com backed library for creating postage labels, calculate the shipping cost of packages, standardize domestic addresses via USPS CASS certified Address Matching Software, and track shipments.}

  s.rubyforge_project = "stamps"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency('savon')
  s.add_runtime_dependency('httpi')
  s.add_runtime_dependency('json')
  s.add_runtime_dependency('multi_json')
  s.add_runtime_dependency('hashie')
end

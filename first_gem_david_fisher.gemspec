# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'first_gem_david_fisher/version'

Gem::Specification.new do |spec|
  spec.name          = "first_gem_david_fisher"
  spec.version       = FirstGemDavidFisher::VERSION
  spec.authors       = ["David Fisher", "Tom Dyer"]
  spec.email         = ["tibbon@gmail.com", "tdyer@gmail.com"]
  spec.summary       = %q{My first gem. Doesn't do much}
  spec.description   = %q{A longer description about why I wrote this useless gem that no one should use}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0.0.beta"
end

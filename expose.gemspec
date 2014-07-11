# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'expose/version'

Gem::Specification.new do |spec|
  spec.name          = "expose"
  spec.version       = Expose::VERSION
  spec.authors       = ["Tim Cooper"]
  spec.email         = ["coop@latrobest.com"]
  spec.description   = %q{Expose attributes as helper methods in ActionController.}
  spec.summary       = %q{Helper method to encapsulate the pattern of exposing attributes through the controller as helper methods.}
  spec.homepage      = "https://github.com/everydayhero/expose"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_dependency 'rails', '>= 3.2.0'
end

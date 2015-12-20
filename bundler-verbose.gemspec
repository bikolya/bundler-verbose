# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bundler/verbose/version'

Gem::Specification.new do |spec|
  spec.name          = "bundler-verbose"
  spec.version       = Bundler::Verbose::VERSION
  spec.authors       = ["Nikolay Bienko"]
  spec.email         = ["bikolya@gmail.com"]

  spec.summary       = %q{Simple plugin for Bundler to generate verbose Gemfile with descriptions}
  spec.description   = %q{Simple plugin for Bundler to generate verbose Gemfile with description of each gem. It may be useful for novice Ruby developers or when you start diving into the new Ruby project.}
  spec.homepage      = "http://github.com/bikolya/bundler-verbose"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["bundler-verbose"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end

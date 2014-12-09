# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'air_monitor/version'

Gem::Specification.new do |spec|
  spec.name          = "air_monitor"
  spec.version       = AirMonitor::VERSION
  spec.authors       = ["Glen Egbert"]
  spec.email         = ["glenegbert1@gmail.com"]
  spec.summary       = %q{Gem for use with Monitor My Air App}
  spec.description   = %q{This gem is for use with teh Monitor My Air app.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "launchy"
  spec.add_runtime_dependency 'faraday', '>= 0', '~> 0.9.0'
end

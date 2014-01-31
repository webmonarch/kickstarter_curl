# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kickstarter_curl/version'

Gem::Specification.new do |spec|
  spec.name          = "kickstarter_curl"
  spec.version       = KickstarterCurl::VERSION
  spec.authors       = ["Eric Webb"]
  spec.email         = ["opensource@collectivegenius.net"]
  spec.description   = "A simple command line tool that collects metadata from a Kickstarter project page."
  spec.summary       = "A simple command line tool that collects metadata from a Kickstarter project page."
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

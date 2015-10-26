# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'giphy_api/version'

Gem::Specification.new do |spec|
  spec.name          = "giphy_api"
  spec.version       = GiphyApi::VERSION
  spec.authors       = ["Matthew Jording"]
  spec.email         = ["mjording@gmail.com"]

  spec.summary       = %q{API wrapper for giphy api https://api.giphy.com/.}
  spec.description   = %q{API wrapper for giphy api https://api.giphy.com/. which is useful}
  spec.homepage      = "https://github.com/mjording/giphy_api"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday_middleware"
  spec.add_dependency "json"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "awesome_print"
end

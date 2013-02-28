# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_reset/version'

Gem::Specification.new do |gem|
  gem.name          = "rails_reset"
  gem.version       = RailsReset::VERSION
  gem.authors       = ["Johan van Zonneveld"]
  gem.email         = ["johan@vzonneveld.nl"]
  gem.description   = %q{Simple rake task to reset your app for development/testing}
  gem.summary       = %q{Reset your development and test environment with one simple rake task}
  gem.homepage      = "https://github.com/42rockers/rails_reset"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", ">= 1.0.0"
  gem.add_development_dependency "rspec", ">= 2.3"
  gem.add_dependency "rake"

  gem.add_dependency 'rails', '>= 3.0'
end

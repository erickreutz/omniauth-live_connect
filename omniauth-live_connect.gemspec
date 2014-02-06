# coding: utf-8
require File.expand_path('../lib/omniauth-live-connect/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "omniauth-live-connect"
  spec.version       = OmniAuth::LiveConnect::VERSION
  spec.authors       = ["Sujith Radhakrishnan"]
  spec.email         = ["sujithrs@yahoo.com"]
  spec.description   = %q{omniauth(oauth2) support for Microsoft Live Connect}
  spec.summary       = %q{omniauth(oauth2) support for Microsoft Live Connect}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

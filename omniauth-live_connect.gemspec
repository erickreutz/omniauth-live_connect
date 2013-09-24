# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/live_connect/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-live_connect"
  spec.version       = Omniauth::LiveConnect::VERSION
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

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

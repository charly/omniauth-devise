# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/devise/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-devise"
  spec.version       = Omniauth::Devise::VERSION
  spec.authors       = ["Charles Sistovaris"]
  spec.email         = ["charlysisto@gmail.com"]

  spec.summary       = %q{Devise Strategy for Omniauth}
  spec.description   = %q{Devise is no more a all in one authentication mechanism but a simple provider among others in the omniaut realm}
  spec.homepage      = "https://github.com/charly/omniauth-devise'"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "http://rubyGems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

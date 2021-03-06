# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eventq_base/version'

Gem::Specification.new do |spec|
  spec.name          = "eventq_base"
  spec.version       = EventqBase::VERSION
  spec.authors       = ["vaughanbrittonsage"]
  spec.email         = ["vaughan.britton@sage.com"]

  spec.summary       = 'This gem contains the base classes and contracts required by any eventq implementations.'
  spec.description   = 'This gem contains the base classes and contracts required by any eventq implementations.'
  spec.homepage      = "https://github.com/sage/eventq"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{bin,lib}/**/**/**")
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency 'class_kit'
  spec.add_dependency 'redlock'

  if RUBY_PLATFORM =~ /java/
    spec.platform = 'java'
    spec.add_dependency('jruby-openssl')
  else
    spec.add_dependency('oj')
    spec.add_dependency('openssl')
  end

end

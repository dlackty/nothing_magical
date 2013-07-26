# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nothing_magical/version'

Gem::Specification.new do |spec|
  spec.name          = "nothing_magical"
  spec.version       = NothingMagical::VERSION
  spec.authors       = ["Richard Lee"]
  spec.email         = ["dlackty@gmail.com"]
  spec.description   = "Easily remove all magic encoding comments for Ruby source files."
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/dlackty/nothing_magical"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   =["nothing_magical"]
  spec.require_paths = ["lib"]
  spec.has_rdoc      = false

  spec.default_executable = %q{nothing_magical}

  spec.add_development_dependency 'rake'
end

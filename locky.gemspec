# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locky/version'

Gem::Specification.new do |spec|
  spec.name          = 'locky'
  spec.version       = Locky::VERSION
  spec.authors       = ['Gabriel Naiman']
  spec.email         = ['gabynaiman@gmail.com']
  spec.summary       = 'Mini locker'
  spec.description   = 'Mini locker'
  spec.homepage      = 'https://github.com/gabynaiman/locky'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest', '~> 4.7'
  spec.add_development_dependency 'turn',     '~> 0.9'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'pry-nav'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dragonfly_mozjpeg/version'

Gem::Specification.new do |spec|
  spec.name          = 'dragonfly_mozjpeg'
  spec.version       = DragonflyMozjpeg::VERSION
  spec.authors       = ['Jurema']
  spec.email         = ['oops@jurema.la']

  spec.summary       = 'Dragonfly processors for mozilla cjpeg and jpegtran encoders.'
  spec.homepage      = 'https://github.com/jurema/dragonfly_mozjpeg'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'dragonfly', '~> 1.0'
  spec.add_dependency 'os', '~> 0.9.6'

  spec.add_development_dependency 'bundler', '~> 1.12'
end


lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'numeja/version'

Gem::Specification.new do |spec|
  spec.name          = 'numeja'
  spec.version       = Numeja::VERSION
  spec.authors       = ['Akira Takahashi']
  spec.email         = ['rike422@gmail.com']

  spec.summary       = 'Parse numbers in japanese numerals from String.'
  spec.description   = 'Parse numbers in japanese numerals from String.'
  spec.homepage      = 'https://github.com/rike422/numeja'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'test-unit-full'
  spec.add_development_dependency 'yard'
end

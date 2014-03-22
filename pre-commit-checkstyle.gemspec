# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pre-commit/checkstyle/version'

Gem::Specification.new do |spec|
  spec.name          = "pre-commit-checkstyle"
  spec.version       = PreCommit::Checkstyle::VERSION
  spec.authors       = ["Allen Madsen"]
  spec.email         = ["blatyo@gmail.com"]
  spec.summary       = %q{Checkstyle linter plugin for pre-commit}
  spec.description   = %q{Checkstyle linter plugin for pre-commit. Useful for linting Java code.}
  spec.homepage      = "https://github.com/secondrotation/pre-commit-checkstyle"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency('pre-commit', '~> 0.15')

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

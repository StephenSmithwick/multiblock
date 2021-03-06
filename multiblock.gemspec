# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "multiblock"
  spec.version       = "0.1.0"
  spec.authors       = ["Michał Szajbe"]
  spec.email         = ["michal.szajbe@gmail.com"]
  spec.description   = %q{Ruby methods can accept only one block at a time. Multiblock helps to build multiple-block wrappers that can be passed to Ruby methods in pleasant way.}
  spec.summary       = %q{Pass multiple blocks to Ruby methods with style}
  spec.homepage      = "http://github.com/monterail/multiblock"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "blankslate"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end

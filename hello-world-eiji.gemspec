# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello/world/eiji/version'

Gem::Specification.new do |spec|
  spec.name          = "hello-world-eiji"
  spec.version       = Hello::World::Eiji::VERSION
  spec.authors       = ["Eiji Sakai"]
  spec.email         = ["eijisakai@gmail.com"]

  spec.summary       = %q{Yet another hello world program}
  spec.description   = %q{Yet another hello world program}
  spec.homepage      = "http://d.hatena.ne.jp/elm200"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end

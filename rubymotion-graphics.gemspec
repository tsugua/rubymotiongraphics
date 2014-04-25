# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubymotion/graphics/version'

Gem::Specification.new do |spec|
  spec.name          = "rmgraphics"
  spec.version       = Rubymotion::Graphics::VERSION
  spec.authors       = ['James Reynolds, Matt Aimonetti', 'Shaun August']
  spec.email         = 'gems@eoslightmedia.com'
  s.summary          = "A RubyMotion port of Macruby-Graphics"
  s.description      = "A RubyMotion port of Macruby-Graphics. https://github.com/drtoast/macruby_graphics"
  s.homepage         = 'https://github.com/tsugua/rubymotion-graphics'
  spec.license       = "Same as Ruby"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

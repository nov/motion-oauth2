# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion-oauth2/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["nov matake"]
  gem.email         = ["nov@matake.jp"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "motion-oauth2"
  gem.require_paths = ["lib"]
  gem.version       = File.read("VERSION").delete("\n\r")
  gem.add_runtime_dependency "bubble-wrap"
end

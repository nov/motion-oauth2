# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["nov matake"]
  gem.email         = ["nov@matake.jp"]
  gem.description   = %q{OAuth2 client library for RubyMotion apps, you need APIs right?}
  gem.summary       = %q{OAuth2 client library for RubyMotion apps}
  gem.homepage      = "https://github.com/nov/motion-oauth2"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "motion-oauth2"
  gem.require_paths = ["lib"]
  gem.version       = File.read("VERSION").delete("\n\r")
  gem.add_runtime_dependency "bubble-wrap"
end

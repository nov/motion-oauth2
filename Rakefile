require "bundler/gem_tasks"
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
Bundler.setup
Bundler.require

namespace :spec do
  desc "Run Motion::OAuth2 specs without compile"
  task :lib do
    sh "bacon #{Dir.glob("spec/**/*_spec.rb").join(' ')}"
  end
  task :motion => 'spec'
  task :all => [:lib, :motion]
end
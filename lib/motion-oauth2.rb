require 'bubble-wrap/http'

Motion::Project::App.setup do |app|
  app.files.unshift File.join(File.dirname(__FILE__), 'motion/oauth2.rb')
  Dir.glob(File.join(File.dirname(__FILE__), 'motion/oauth2/*.rb')).each do |file|
    app.files.unshift file
  end
end
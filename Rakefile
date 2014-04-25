$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'
require 'rubygems'

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'rubymotion-graphics/*.rb')).each do |file|
    app.files.unshift(file)
  end
  app.frameworks += ['Quartz']
end

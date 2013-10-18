$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'

$:.unshift("./lib/")
require './lib/rubymotion-graphics'
 
Motion::Project::App.setup do |app|
  app.name = 'rubymotion-graphics test'
  
  app.frameworks += ['Cocoa', 'Quartz', 'CoreGraphics', 'ApplicationServices']
  
end
 
task :test_task do
  p 'test task'
end

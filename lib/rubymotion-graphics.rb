unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile"
end

$:.unshift("./lib/")
require './lib/rubymotion-graphics'


Motion::Project::App.setup do |app|
  
    app.frameworks << 'Cocoa' unless app.frameworks.include?('Cocoa')
    app.frameworks << 'Quartz' unless app.frameworks.include?('Quartz')
    app.frameworks << 'CoreGraphics' unless app.frameworks.include?('CoreGraphics')
    app.frameworks << 'ApplicationServices' unless app.frameworks.include?('ApplicationServices')
    # p Dir.glob(File.join(File.dirname(__FILE__))
    Dir.glob(File.join(File.dirname(__FILE__), 'lib/rubymotion-graphics/*.rb')).each do |file|
      app.files.unshift(file)
    end 
end

require 'rubymotion-graphics/canvas.rb'


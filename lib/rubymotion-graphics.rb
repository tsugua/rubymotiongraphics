unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile"
end

Motion::Project::App.setup do |app|
  
    app.frameworks << 'Cocoa' unless app.frameworks.include?('Cocoa')
    app.frameworks << 'Quartz' unless app.frameworks.include?('Quartz')
    app.frameworks << 'CoreGraphics' unless app.frameworks.include?('CoreGraphics')
    app.frameworks << 'ApplicationServices' unless app.frameworks.include?('ApplicationServices')
  
    Dir.glob(File.join(File.dirname(__FILE__), 'rubymotion-graphics/*.rb')).each do |file|
      app.files.unshift(file)
    end 
end

require 'rubymotion-graphics/canvas.rb'
require 'rubymotion-graphics/color.rb'
require 'rubymotion-graphics/gradient.rb'
require 'rubymotion-graphics/graphics.rb'
require 'rubymotion-graphics/image.rb'
require 'rubymotion-graphics/path.rb'
require 'rubymotion-graphics/pdf.rb'
require 'rubymotion-graphics/elements/particle.rb'
require 'rubymotion-graphics/elements/rope.rb'
require 'rubymotion-graphics/elements/sandpainter.rb'




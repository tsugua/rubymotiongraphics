unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile"
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'rubymotion-graphics/*.rb')).each do |file|
    app.files.unshift(file)
  end
end

require 'rubymotion-graphics/canvas'
require 'rubymotion-graphics/color'
require 'rubymotion-graphics/gradient'
require 'rubymotion-graphics/graphics'
require 'rubymotion-graphics/image'
require 'rubymotion-graphics/path'
require 'rubymotion-graphics/pdf'
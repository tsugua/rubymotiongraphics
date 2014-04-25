$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/osx'
require 'rubygems'


Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'rubymotion-graphics/*.rb')).each do |file|
    app.files.unshift(file)
  end
end

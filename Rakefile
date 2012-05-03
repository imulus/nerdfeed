require 'bundler'
Bundler.require

require 'sinatra/activerecord/rake'
require 'coyote/rake'

$: << File.expand_path(File.dirname(__FILE__) + "/lib")
require 'nerdfeed'


root = "lib/nerdfeed"

task :default => [:build]
task :build   => ['assets:build']

namespace :assets do
  Bundler.require(:assets)
  task :build => ['css:build','js:build']
end

namespace :css do
  coyote :build do |config|
    config.input    = "#{root}/assets/stylesheets/app/application.less"
    config.output   = "#{root}/public/css/application.css"
  end

  coyote :watch do |config|
    config.input    = "#{root}/assets/stylesheets/app/application.less"
    config.output   = "#{root}/public/css/application.css"
    config.options  = { :quiet => true }
  end
end

namespace :js do
  coyote :build do |config|
    config.input    = "#{root}/assets/javascripts/app/application.coffee"
    config.output   = "#{root}/public/scripts/application.js"
  end

  coyote :watch do |config|
    config.input    = "#{root}/assets/javascripts/app/application.coffee"
    config.output   = "#{root}/public/scripts/application.js"
    config.options  = { :quiet => true }
  end
end

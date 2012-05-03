require 'bundler'
Bundler.require(:default)

$: << File.expand_path(File.dirname(__FILE__) + "/lib")
require 'nerdfeed'
require 'sinatra/activerecord/rake'

root = "lib/nerdfeed"

task :default => [:build]
task :build   => ['assets:build']

namespace :assets do
  task :build => ['css:build','js:build']
end

namespace :css do
  Bundler.require(:assets)
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
  Bundler.require(:assets)
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

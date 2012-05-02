require 'coyote/rake'

task :default => [:build]
task :build   => ['assets:build']

namespace :assets do
  task :build => ['css:build','js:build']
end

namespace :css do
  coyote :build do |config|
    config.input    = "assets/stylesheets/app/application.less"
    config.output   = "public/css/application.css"
  end

  coyote :watch do |config|
    config.input    = "assets/stylesheets/app/application.less"
    config.output   = "public/css/application.css"
    config.options  = { :quiet => true }
  end
end

namespace :js do
  coyote :build do |config|
    config.input    = "assets/javascripts/app/application.coffee"
    config.output   = "public/scripts/application.js"
  end

  coyote :watch do |config|
    config.input    = "assets/javascripts/app/application.coffee"
    config.output   = "public/scripts/application.js"
    config.options  = { :quiet => true }
  end
end

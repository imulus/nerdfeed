$: << File.expand_path(File.dirname(__FILE__) + "/lib")
require 'nerdfeed'

map '/' do
  run NerdFeed::App
end
require 'rubygems'
require File.join(File.dirname(__FILE__), 'app.rb')
Rack::Handler.default.run(Appsy, :Port => 4000)

run Appsy
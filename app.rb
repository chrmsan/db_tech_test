require 'sinatra/base'

class Appsy < Sinatra::Base
  get '/' do
    'Hello Appsy!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

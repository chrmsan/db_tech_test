require 'sinatra/base'

class Appsy < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/names' do
    @partner1 = params[:partner_1_name]
    @partner2 = params[:partner_2_name]
    erb :match
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

require 'sinatra/base'

class Appsy < Sinatra::Base

  data_store = {}


  get '/' do
    'Hello from Andy!'
  end


  get '/set' do
    data_store.merge!(params)
    'Data Stored!'
  end

  get '/get' do
    data_store[params[:key]]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

#learned this from a quick work shop with mr. Jenkins

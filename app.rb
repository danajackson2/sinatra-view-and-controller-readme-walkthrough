require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @reversed_string = params["string"].reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Sara", "Mary", "Joe"]
    erb :friends
  end
end
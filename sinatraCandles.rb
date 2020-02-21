require 'sinatra' 
require 'sinatra/reloader'

# erb exercise

get '/howmany' do
  erb :howmany
end


post '/candles' do
  erb :candles
end 
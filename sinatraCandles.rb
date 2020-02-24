require 'sinatra' 
require 'sinatra/reloader'

# erb exercise

get '/howmany' do
  erb :howmany
end


post '/candles' do
  @num = params[:numCandles].to_i
  erb :candles
end 
require 'sinatra'

get '/' do
  erb :index
end

get '/:name/:city/:age' do
  erb :stuff
end

get '/form' do
  erb :form
end

post '/form' do
  "Your nickname is #{params[:nickname]}"
end

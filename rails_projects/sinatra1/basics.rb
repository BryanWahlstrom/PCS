require 'sinatra'
require 'base64'

get '/' do
  "Hello, world!"
end

get '/about' do
  "A little about me."
end

get '/hello/:name' do
  "Hello there, #{params[:name].upcase}."
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  # Base64.encode64
  Base64.encode64(params[:secret])
end

get '/decrypt/:secret' do
  Base64.decode64(params[:secret])
end

not_found do
  status 404
  "It ain't there yo"
end
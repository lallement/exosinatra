require 'rubygems'
require 'sinatra'

get '/hello' do
  erb :Hello
end

get '/index' do
  erb :index
end

get '/' do
  erb :form
end

post '/' do
  @name = "#{params[:post][:first_name]} #{params[:post][:last_name]}"
  @title = "Hello #{@name}"
  erb :hello
end

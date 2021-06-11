     
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'pg'


get '/' do
  "Podcast rec test"
  erb :index
end






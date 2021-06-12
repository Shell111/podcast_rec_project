     
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'pg'

require_relative 'db/db' 
require_relative 'models/podcast'
require_relative 'models/user'
require_relative 'controllers/podcasts_controller' 
require_relative 'controllers/users_controller' 

get '/' do
  redirect '/podcasts'
end

# get '/podcast' do
#   "The Podcast Rec & more content here"
# end

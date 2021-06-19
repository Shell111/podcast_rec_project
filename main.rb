     
require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry' if development?
require 'pg'

enable :sessions

set(:auth) do |auth|
  condition do
      if(!is_logged_in?)
          redirect '/login'
      end
  end
end

require_relative 'db/db' 
require_relative 'models/podcast'
require_relative 'models/user'
require_relative 'models/likes'
require_relative 'helpers/sessions'
require_relative 'controllers/podcasts_controller' 
require_relative 'controllers/users_controller' 
require_relative 'controllers/sessions_controller' 
require_relative 'controllers/likes_controller'

get '/' do
  redirect '/podcasts'
end


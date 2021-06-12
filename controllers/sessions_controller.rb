get '/login' do
  erb :'/sessions/login', locals: {error_message: ''}
end


# User logging in
post '/sessions' do
  email = params[:email]
  password = params[:password]

  user = find_user_by_email(email)

  if user && BCrypt::Password.new(user['password_digest']) == password 
    #the method above cannot be reversed
    session[:user_id] = user['id']
    redirect '/' #if above is true then this will be returned
  else
    erb :'/sessions/login', locals: {error_message: 'Incorrect password'}
  end
end

# logging out of a session
delete '/sessions' do
  session[:user_id] = nil
  redirect '/'
end

# Sessions Hash -> keeps info about the user session
# this is available in Sinatra specifically
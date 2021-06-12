get '/sign_up' do
  erb :'/users/new'
end

post '/users' do
  first_name = params[:first_name]
  surname = params[:surname]
  email = params[:email]
  password = params[:password]

  create_user(first_name, surname, email, password)

  redirect '/'
end
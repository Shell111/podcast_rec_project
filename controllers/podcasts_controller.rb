get '/podcasts' do
  results = all_shows()
  erb :'/podcasts/index', locals: {podcasts: results }
end


# Displays create form
get '/podcasts/new' do
  erb :'/podcasts/new'
end


# Display individual food
get '/podcasts/:id' do |id|
  results = display_podcast(id)
  erb :'podcasts/show', locals: {podcasts: results[0]}  
end



# Retrieves the form data
post '/podcasts' do
  podcast_title = params[:podcast_title]
  genre = params[:genre]
  image_url = params[:image_url]
  about = params[:about]
  show_url = params[:show_url]

  create_show(podcast_title, genre, image_url, about, show_url)
  redirect "/podcasts"
end


# Update & edit button links to this
get '/podcasts/:id/edit' do |id|
  podcast_title = params[:podcast_title]
  genre = params[:genre]
  image_url = params[:image_url]
  about = params[:about]
  show_url = params[:show_url]
  results = edit_show(id)

  erb :'/podcasts/edit', locals: { edit: true, podcasts: results[0]}
end


# SERVER processing function
put '/podcasts/:id' do |id|
  podcast_title = params[:podcast_title]
  genre = params[:genre]
  image_url = params[:image_url]
  about = params[:about]
  show_url = params[:show_url]

  results = update_show(podcast_title, genre, image_url, about, show_url, id)
  redirect "podcasts/#{id}"
end


# SERVER processing function
# Delete individual food 
delete '/podcasts/:id' do |id|
  results = delete_show(id)
  redirect "/podcasts"
end

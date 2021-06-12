get '/podcasts' do
  results = all_shows()

  erb :'/podcasts/index', locals: {podcasts: results }
end


# Displays create form
get '/podcasts/new' do
  erb :'/podcasts/new'
end


# Display individual food
# Add an edit button

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
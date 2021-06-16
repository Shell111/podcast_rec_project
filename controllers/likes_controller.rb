post '/likes' do
  user_id = current_user["id"]
  podcast_id = params[:podcast_id]
  create_like(user_id, podcast_id)

  redirect "/podcasts"
end

# get '/likes' do
#   podcast_id = params[:podcast_id]
#   count_like(podcast_id)
#   erb :'/podcasts/index'
# end


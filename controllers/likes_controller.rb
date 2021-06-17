post '/likes' do
  user_id = current_user["id"]
  podcast_id = params[:podcast_id]
  create_like(user_id, podcast_id)

  redirect "/podcasts"
end

# get '/likes' do
#   podcast_id = params[:podcast_id]
#   count = count_like(podcast_id)
#   erb :'/podcasts/index', locals: {podcast_id: count[0]}  
# end

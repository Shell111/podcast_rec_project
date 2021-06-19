post '/likes' do
  user_id = current_user["id"]
  podcast_id = params[:podcast_id]
  create_like(user_id, podcast_id)

  redirect "/podcasts"
end





def create_like(user_id, podcast_id)
  # params = [ user_id, podcast_id ]
  run_sql("INSERT INTO podcast_likes(user_id, podcast_id) VALUES($1, $2);", [user_id, podcast_id])
end


# def count_like(podcast_id)
#   run_sql("SELECT COUNT(podcast_id), podcast_id FROM podcast_likes GROUP BY podcast_id;"[podcast_id])
# end
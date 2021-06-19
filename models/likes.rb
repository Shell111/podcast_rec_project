
def create_like(user_id, podcast_id)
  run_sql("INSERT INTO podcast_likes(user_id, podcast_id) VALUES($1, $2);", [user_id, podcast_id])
end

def count_like(podcast_id)
  run_sql("SELECT COUNT(podcast_id) AS like_count FROM podcast_likes WHERE podcast_id = $1;", [podcast_id])
end


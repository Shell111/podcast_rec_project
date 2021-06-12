def all_shows()
  run_sql("SELECT * FROM podcasts;")
end



# Display individual food
def display_podcast(id)
  params = [ id ]
  sql_query = ("SELECT * FROM podcasts WHERE id = $1;")
  run_sql(sql_query, params)
end



# create show function 
# def create_show(podcast_title, genre, image_url, about, show_url)

def create_show(podcast_title, genre, image_url, about, show_url)
  params = [podcast_title, genre, image_url, about, show_url]
  sql_query = ("INSERT INTO podcasts(podcast_title, genre, image_url, about, show_url) VALUES($1, $2, $3, $4, $5);") 
  run_sql(sql_query, params)
end
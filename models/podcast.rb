def all_shows()
  run_sql("SELECT * FROM podcasts;")
end


# Display individual podcast
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


# EDIT FUNCTION

def edit_show(id)
  params = [id]
  sql_query = ("SELECT * FROM podcasts WHERE id = $1;")
  run_sql(sql_query, params)
end


# SERVER processing functions

def update_show(podcast_title, genre, image_url, about, show_url, id)
  params = [podcast_title, genre, image_url, about, show_url, id]
  sql_query = ("UPDATE podcasts SET podcast_title = $1, genre = $2, image_url = $3, about = $4, show_url = $5  WHERE id = $6;")
  run_sql(sql_query, params)
end


# Delete a query
def delete_show(id)
  params = [id]
  sql_query = ("DELETE FROM podcasts WHERE id = $1")
  run_sql(sql_query, params)
end

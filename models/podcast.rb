def all_shows()
  run_sql("SELECT * FROM podcasts;")
end



# Display individual food
def display_podcast(id)
  params = [ id ]
  sql_query = ("SELECT * FROM podcasts WHERE id = $1;")
  run_sql(sql_query, params)
end
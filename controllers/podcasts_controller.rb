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
  # results = run_sql("SELECT * FROM menu WHERE id = #{id};")
  # id = params[:id]
  results = display_podcast(id)
  # display_food(id)
  erb :'podcasts/show', locals: {podcasts: results[0]} #create an individual food display ERB 
  # locals menu is my food table
end
get '/podcasts' do
  # results = all_food()

  # results.each do |result|
  #   p result
  # end
  erb :'/podcasts/index'
  # erb :'/podcast/index', locals: {menu: results }
end


# Displays create form
get '/podcasts/new' do
  erb :'/podcasts/new'
end
#  logging in function
def is_logged_in?()
  puts session
  if session[:user_id] 
    puts "true"
    return true
  else
    puts "false"
    return false
  end

end



# current session
def current_user()
  if is_logged_in?
    return find_user_by_id(session[:user_id])
  else
    return nil
  end
end

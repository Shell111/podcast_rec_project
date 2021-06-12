require 'bcrypt' 


def create_user(first_name, surname, email, password)
  password_digest = BCrypt::Password.create(password)
  params = [first_name, surname, email, password_digest]
  sql_query = "INSERT INTO users(first_name, surname, email, password_digest) VALUES($1, $2, $3, $4)"
  run_sql(sql_query, params)
end

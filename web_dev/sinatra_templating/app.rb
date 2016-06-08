# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# Create a route for campus_directory
get '/campus_directory' do
  @students = db.execute("SELECT * FROM students")
  erb :campus_directory
end

get '/campus_update' do
  erb :campus_update
end

post '/campus' do
  db.execute("UPDATE students SET campus=? WHERE name=?", [params['campus'], params['name']])
  redirect '/campus_directory'
end

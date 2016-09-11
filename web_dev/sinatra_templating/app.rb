# require gems
require 'sinatra'
require 'sqlite3'

#static folder also often called /public 
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
# @ in front of var makes variable available in template
# then in template use -->  <% ruby code %> 
# <%= @variable %> will print the output of an expression
# <% blahblahblah will let the ruby run in the background
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
# corresponding html --> <form action="/students" method="POST">
post '/students' do
  # p params --> used to check what is submitted (aka, age was a string--> converted to integer before submitting to db)
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/profile' do
  id = params[:id].to_i
  @student = db.execute("SELECT * FROM students WHERE id=?", id)
  erb :profile
end
# add static resources
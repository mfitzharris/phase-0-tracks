# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# localhost:9393/?name=molly&age=25
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
# localhost:9393/about/molly
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

# localhost:9393/molly/loves/zuzu
get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
# localhost:9393/students
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student
# localhost:9393/students/50
get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  response = ""
  response << "ID: #{student['id']}<br>"
  response << "Name: #{student['name']}<br>"
  response << "Age: #{student['age']}<br>"
  response << "Campus: #{student['campus']}<br>"
  response
end

# write a GET route that displays an address (make it up)
get '/contact' do
  "123 S Main Street <br> Anywhere Town, IL 60000 <br> USA"
end


# write a GET route with query parameters 
# for a name, 
# localhose:9393/great_job?name=blah
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# a route that uses route parameters
# to add two numbers and respond with the result
get '/:num1/addto/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  num3 = num1 + num2
  "#{num1} + #{num2} = #{num3}"
end

# write a route that allows user to search database in some way
get '/students/campus/:campus' do
  campus = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  response = "#{params[:campus]} CAMPUS:<br><br>"
  campus.each do |student|
    response << " ID: #{student['id']}<br>"
    response << " Name: #{student['name']}<br>"
    response << " Age: #{student['age']}<br><br>"
  end
  response
end



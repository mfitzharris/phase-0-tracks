# OPERATION KITTEN EXPLOSION

# talk about Object Relational Mapping (ORM)
#   - taking relational data and use it in a object oriented language
#   - take data from database and make it useful in scripting language

# require gems
#   - gem = prewritten ruby to install and require
#   - rspec technically a gem
#   - SQLite3 is a gem
require 'sqlite3'
require 'faker' #--> gem lets you create fake data

# create SQLite3 database
# sqlite3 somedatabase.db <-- from terminal, want thru ruby
db = SQLite3::Database.new("kittens.db") #<-- creates database file
# db.execute("sql command")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens( 
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")



# add LOOOOTS of kittens
# so. many. kittens.
# KittenExplosion
def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

10.times do
  create_kitten(db, Faker::Name.name, 0)
end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# puts kittens.class
# kittens.each do |kitten|
#   puts "#{kitten ['name']} is #{kitten['age']}"
# end
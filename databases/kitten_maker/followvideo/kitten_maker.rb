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

# learn about fancy string delimiters

# create a kittens table (if it's not there already)

# add a test kitten

# explore ORM by retrieving data

# add LOOOOTS of kittens
# so. many. kittens.
# KittenExplosion
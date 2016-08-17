#define Santa class
class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  #setter methods
  def celebrate_birthday
    @age = @age+1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer.capitalize)
    @reindeer_ranking.insert(-1, reindeer.capitalize)
  end

end


##################################################
################ DRIVER CODE #####################
##################################################

##############################
#### CREATE MANY SANTAS ######
##### release 4         ######
##############################

all_santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

puts "How many santas do you want to create:"
number_of_santas = gets.chomp.to_i

number_of_santas.times do |number|
  all_santas << Santa.new(example_genders.sample, example_ethnicities.sample)
  all_santas[number].age = rand(140)
  puts "Santa # #{number} is #{all_santas[number].age} year old, #{all_santas[number].ethnicity}, #{all_santas[number].gender} Santa."
end

puts "There are now #{all_santas.length} Santas created"



##### test new setter/getter methods ##### 
puts "-------------------------------------"
p all_santas[0]

puts "This santa is #{all_santas[0].age} years old"
all_santas[0].celebrate_birthday
puts "This santa is now #{all_santas[0].age} years old"

all_santas[0].get_mad_at("Vixen")
p all_santas[0]

p all_santas[0].ethnicity

puts "This santa is #{all_santas[0].gender}"
all_santas[0].gender = "gender fluid"
puts "This santa is now #{all_santas[0].gender}"



########################################
###### MULTIPLE INITIALIZATIONS ########
###### release 1 (part 2)       ########
########################################

# # multiple initializations
# all_santas = []

# # get from santa info from user
# puts "Hello Santa! What is your gender:"
# santa_gender = gets.chomp
# # loop to get multiple santa info
# until santa_gender == "done"
#   puts "What is your ethnicity?"
#   santa_ethnicity = gets.chomp
#   all_santas << Santa.new(santa_gender,santa_ethnicity)
#   puts "Hello Santa! What is your gender? (type 'done' to exit)."
#   santa_gender = gets.chomp
# end

# # test that array worked
# p all_santas

####################################
##### SIMPLE INITIALIZATION ########
##### release 1 (part 1)    ########
####################################

# Kris_Kringle = Santa.new("Agender", "Polish")
# Kris_Kringle.speak
# Kris_Kringle.eat_milk_and_cookies("short bread cookie")

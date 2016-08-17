#define Santa class
class Santa

  def initialize(gender, ethnicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end
 #getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
    
  #setter methods
  def celebrate_birthday
    @age = @age+1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer.capitalize)
    @reindeer_ranking.insert(-1, reindeer.capitalize)
  end

  def gender=(new_gender)
    @gender = new_gender
  end

 
  end
end


##############################
######## TEST CODE ###########
##############################

# multiple initializations
all_santas = []

# get from santa info from user
puts "Hello Santa! What is your gender:"
santa_gender = gets.chomp
# loop to get multiple santa info
until santa_gender == "done"
  puts "What is your ethnicity?"
  santa_ethnicity = gets.chomp
  all_santas << Santa.new(santa_gender,santa_ethnicity)
  puts "Hello Santa! What is your gender? (type 'done' to exit)."
  santa_gender = gets.chomp
end

# test that array worked
p all_santas



##### test new setter/getter methods ##### 
all_santas[0].celebrate_birthday
p all_santas[0].age 

all_santas[0].get_mad_at("Vixen")
p all_santas[0]

p all_santas[0].ethnicity


all_santas[0].gender = "gender fluid"
p all_santas[0]




# Kris_Kringle = Santa.new("Agender", "Polish")
# Kris_Kringle.speak
# Kris_Kringle.eat_milk_and_cookies("short bread cookie")

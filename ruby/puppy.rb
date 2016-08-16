####   RELEASE 0   ############
# design a puppy class in comments


# --SPECIES------------------
# puppy

# --CHARACTERISTICS----------
# cute: yes
# name: varies
# fur color: varies
# breed: varies
# loves walks: yes

# --BEHAVIOR-----------------
# wiggle
# bark
# snuggles
# silly



##############################################
#  instructions say to do everything in IRB  #
#  copying IRB from R1&R2 to here as well    #
##############################################

####   RELEASE 1   ####################

#declare Puppy class
class Puppy
  end
#Ask what methods are available (add P to show in terminal)
p Puppy.methods
#Create new instances of Puppy class
duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new
#try a few method calls (add p to show in terminal)
p spot.class #--> Puppy
p duchess == fido #--> false
p fido.instance_of?(Array) #--> false
p fido.instance_of?(Puppy) #--> true
# p spot.play_dead #--> RETURNS ERROR --> `<main>': undefined method `play_dead' for #<Puppy:0x007fdfb30bacd0> (NoMethodError)


####   RELEASE 2   ################################

str = String.new #--> create a new string using class method
p str.length #--> 0
p str.empty? #--> true
str += "huh"
p str #--> "huh"
str = "some string" #--> new instance by declaring literally
greeting = String.new("hello") #-->String.new can take an argument
p greeting.length #--> 5
p greeting.upcase #--> HELLO
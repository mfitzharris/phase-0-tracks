#pseudocode a class w at least 3 attributes, 3 methods

# --------------------------------
# -----FAIRY GODMOTHER------------
# --------------------------------
#
# - CHARACTERISTICS --------------
# name: varies (string)
# good?: varies (boolean)
# age: 0 (static-just born)
# hair color: varies (string-->randomized from an array?)
# 
# - BEHAVIOR ---------------------
# abracadabra 
#   puts abracadbra
# bippity boppity boo
#   puts bippity boppity boo
# become evil
#   change good? alliance to evil
# help princess
#   fairy godmother will save name of inputted princess

class Fairy_Godmother
  attr_reader :is_good
  attr_accessor :name, :hair_color, :age

  def initialize(name, hair_color)
    puts "~ A new Fairy Godmother was born from the dew drops on a daisy ~"
    @name = name
    @hair_color = hair_color
    @is_good = [true, false].sample
    @age = 0
  end

  def abracadabra
    puts "ABRACADABRA!~*~*~"
  end

  def bippity
    puts "Bippity ~ Boppity ~ Boo ~"
  end

  def help_princess(princess)
    if @is_good
      puts "WOOHOO! #{@name} saved the day! #{princess} is sounds and safe!"
    else
      puts "UH OH, you asked the wrong Fairy Godmother for help."
      puts "  #{princess} now has to deal with:"
      puts "  #{["Eternal sleep induced by needle pricking", "Being a frog", "Being hunted by their evil stepmother"].sample}"
    end
  end

  #setter method
  def become_evil
    @is_good = false
  end

end



##### TEST CODE ###########

Maleficent = Fairy_Godmother.new("Maleficent", "blue")
p Maleficent
Maleficent.name = "Dragon Maleficent"
p Maleficent.name
Maleficent.become_evil
Maleficent.help_princess("Aurora")


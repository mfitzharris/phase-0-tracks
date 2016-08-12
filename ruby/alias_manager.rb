#write a method to take a spy's real name
# and create a fake name
  #swap first and last name
  #aeiou --> eioua
  #bcdfghjklmnpqrstvwxyz --> cdfghjklmnpqrstvwxyzb
#abcdefghijklmnopqrstuvwxyz

#################################################

# run .downcase method 
# separate letters into array
# when " " do nothing
# change aeiou --> eioua
  # when a, change to e
  # when e change to i
  # when i change to o
  # when o change to u
  # when u change to a
# change bcdfghjklmnpqrstvwxyz --> cdfghjklmnpqrstvwxyzb
  # when d change to f
  # when h change to j
  # when n change to p
  # when t change to v
  # when z change to b
  # otherwise, run .next method
# run .join
# split at " " and switch first and last name
# run .join on new name
# run .capitalize! on new name

##############################################

def make_alias(name)
  name.downcase!
  name_letters = name.split('')
  name_letters.map! do |letter|
    if letter == " "
      letter = letter
    elsif letter == "a" 
      letter = "e"
    elsif letter == "e"
      letter = "i"
    elsif letter == "i"
      letter = "o"
    elsif letter == "o"
      letter = "u"
    elsif letter == "u"
      letter = "a"
    elsif letter == "d"
      letter = "f"
    elsif letter == "h"
      letter = "j"
    elsif letter == "n"
      letter = "p"
    elsif letter == "t"
      letter = "v"
    elsif letter == "z"
      letter = "b"
    else
      letter.next!
    end
  end
  new_alias = name_letters.join.split(' ')
  new_alias.reverse!
  new_alias.map! {|name| name.capitalize!}
  new_alias.insert(1, " ")
  new_alias = new_alias.join
  p "Your alias is #{new_alias}."   
end

# make_alias("Felicia Torres")

#USER INTERFACE

puts "Please enter a first and last name"
input = gets.chomp
until input.downcase == "quit"
  make_alias(input)
  puts "Please enter a first and last name. Type 'quit' when done."
  input = gets.chomp
end
puts "Thank you for using AAAAYE-LIAS MAKER 5000."










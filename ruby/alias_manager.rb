#write a method to take a spys real name
#create a fake name
  #swap first and last name
  #aeiou --> eioua
  #bcdfghjklmnpqrstvwxyz --> cdfghjklmnpqrstvwxyzb
#abcdefghijklmnopqrstuvwxyz

# run .downcase method 
# separate the first and last name into array
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
# run .join on new name
# run .capitalize! on new name
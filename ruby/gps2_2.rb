# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create an empty hash 
  # split the inputted string by spaces
  # pass each split element into the hash
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash --> item:quantity

# Method to add an item to a list
# input: hash, item name and optional quantity
# steps: pass in new item and quantity to hash
# output: updated list with new key/value pair

# Method to remove an item from the list
# input: hash, item name
# steps: delete the key with item name
# output: updated hash

# Method to update the quantity of an item
# input: hash, item name, new desired quantity
# steps: use a method to update the value of key with item name
# output: updated key/value in hash

# Method to print a list and make it look pretty
# input: the list
# steps: iterate over list 
# output: item= quantity

def create_list(input)
  items = {}
  input.split(' ').each do |item|
    items[item] = 0
  end
  print_list(items)
end

def add_to_list(list, new_item, quantity = 0)
  list[new_item] = quantity
end

def delete_item(list, item)
  list.delete(item)
end

def update_quant(list, item, new_quant)
  list.merge!(item => new_quant)
end

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end
# TEST CODE 
groceries = create_list("banana apple orange")

add_to_list(groceries, "milk", 1)
p groceries

delete_item(groceries, "banana")
p groceries

update_quant(groceries, "apple", 2)
p groceries


# Release 3 Test Code
shopping = create_list("milk tums cheese")

add_to_list(shopping, "lemonade", 2)
add_to_list(shopping, "Tomatoes", 3)
add_to_list(shopping, "Onions", 1)
add_to_list(shopping, "Ice Cream", 4)

delete_item(groceries, "lemonade")

update_quant(groceries, "Ice Cream", 1)

print_list(groceries)




### REFLECTION ###

# Learned the proper way to pseudocode and how beneficial it can be
# An array is maybe easier to work with, but the structure of a hash makes more sense here
# a method returns ...
# You can pass pretty much anything into a method as an argument
# by defining the returned information from a method to a variable
# How to pseudocode and why to pseudocode. Still a bit fuzzy on what exactly a method returns...


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
  p items
  # print_list(items)
end

def add_to_list(list, new_item, quantity = 0)
  list[new_item] = quantity
end

def update_quant(list, item, new_quant)
  list.merge!(item => new_quant)
end

# TEST CODE 
groceries = create_list("banana apple orange")

add_to_list(groceries, "milk", 1)
p groceries

update_quant(groceries, "apple", 2)
p groceries
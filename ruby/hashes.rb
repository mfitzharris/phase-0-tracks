#initialize empty hash
client = {}
#ask for clients name - 
#string, keep as is
puts "What is the client's name"  
client[:name] = gets.chomp
#do they have kids - 
#string, convert to boolean (if/else)
puts "Do #{client[:name]} have children? (yes or no)"
has_children = gets.chomp
if has_children == "yes"
  has_children = true
else
  has_children = false
end
client[:has_children] = has_children
# puts client[:has_children]
#number of client's children - 
  #string, convert to integer or nil if left blank
puts "How many children does #{client[:name]} have?"
children = gets.chomp
if children == "" || children == "0"
  children = nil
else 
  children = children.to_i
end
client[:children] = children
# p client[:children]
#desired decor theme - 
  #string, keep as is
puts "What is #{client[:name]}'s desired decor theme?"
client[:theme] = gets.chomp
#budget
  #string, convert to integer
puts "What is #{client[:name]}'s budget"
client[:budget] = gets.chomp.to_i

#print hash to screen
puts client

#ask user if they need to update a key
#if "none" skip
#else 
  #ask for key they want to update
    #turn string into symbol
  #ask for new value
  #somehow handle converting data > loop back to previous code?? test things out
puts "Are there any changes you need to make? (type 'none' if no)"
if gets.chomp != "none"
  puts "What key do you need to update?"
  key = gets.chomp.to_sym
  if key == :name
    puts "What is the client's name"  
    client[:name] = gets.chomp
  elsif key == :has_children
    puts "Do #{client[:name]} have children? (yes or no)"
    has_children = gets.chomp
      if has_children == "yes"
        has_children = true
      else
        has_children = false
      end
    client[:has_children] = has_children
  elsif key == :children
    puts "How many children does #{client[:name]} have?"
    children = gets.chomp
      if children == "" || children = "0"
        children = nil
      else 
        children = children.to_i
      end
    client[:children] = children
  elsif key == :theme
    puts "What is #{client[:name]}'s desired decor theme?"
    client[:theme] = gets.chomp
  elsif key == :budget 
    puts "What is #{client[:name]}'s budget"
    client[:budget] = gets.chomp.to_i
  else
    puts "Sorry, that isn't a valid key"
  end
end
    
p client 



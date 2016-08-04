puts "What is your name"
name = gets.chomp

puts "How old are you?"
age = gets.chomp
puts "What year were you born"
year_born = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
wants_garlic_bread = gets.chomp
until wants_garlic_bread == true || wants_garlic_bread == false
  if wants_garlic_bread == "yes"
    wants_garlic_bread = true
  elsif wants_garlic_bread == "no"
    wants_garlic_bread = false
  else
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes or no)"
    wants_garlic_bread = gets.chomp
  end  
end

puts "Would you like to enroll in the company's health insurance? (yes or no)"
insurance = gets.chomp
until insurance == true || insurance == false
  if insurance == "yes"
    insurance = true
  elsif insurance == "no"
    insurance = false
  else 
    puts "Would you like to enroll in the company's health insurance? (yes or no)"
    insurance = gets.chomp
  end
end
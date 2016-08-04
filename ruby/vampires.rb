puts "How many employees will be processed"
employees = gets.chomp
employees = employees.to_i

while employees > 0
  puts "What is your name"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp
  age = age.to_i

  puts "What year were you born"
  year_born = gets.chomp
  year_born = year_born.to_i

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


  if (age == 2016-year_born|| age == 2015-year_born)&&(wants_garlic_bread||insurance)
    vampire = "Probably not a vampire."
  elsif ((age == 2016-year_born)&&(wants_garlic_bread||insurance))==false
    vampire = "Probably a vampire."
  elsif ((age == 2016-year_born)&&(wants_garlic_bread&&insurance))==false
    vampire = "Almost certainly a vampire."
  elsif name == "Drake Cula" || name == "Tu Fang"
    vampire = "Definitely a vampire."
  else 
    vampire = "Results inconclusive."
  end
  puts vampire
  employees = employees - 1
end
  
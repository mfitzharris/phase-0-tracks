classroom = {
  people: {
    students: {
      number_of: 10,
      names: ["bob", "susy", "goose", "fred", "louis", "tiffany", "caitlin", "matt", "george", "eloise"],
    },
    teacher: {
      number_of: 1, 
      names: ["bloop bleep"],
      species: "robot"
    }
  },
  class_pet: {
    name: "snuggles",
    species: "bunny",
    age: 1
  },
  supplies: {
    pencils: 50,
    notebooks: 20,
    crayons: 500,
    books: 60,
    snacks: 45,
  },
  furniture: {
    desks: {
      student_desks: 10,
      teacher_desks: 1,
      },
    book_shelves: 4,
    white_board: 2,
  }
}

#will print an alphabetized list of the students
p classroom[:people][:students][:names].sort!

# print the number of each supply in the classroom
classroom[:supplies].each do |supply, number|
  puts "there are #{number} #{supply} in the classroom"
end

#print some information about the class pet
p "The class's pet #{classroom[:class_pet][:species]}'s name is #{classroom[:class_pet][:name].capitalize}. They are #{classroom[:class_pet][:age]} years old."

#print the total number of desks
p "The total number of desks in the classroom is: #{classroom[:furniture][:desks][:student_desks]+classroom[:furniture][:desks][:teacher_desks]}"

#print some info about the teacher
p "The teacher is #{classroom[:people][:teacher][:names][0]}, they are a #{classroom[:people][:teacher][:species]}."







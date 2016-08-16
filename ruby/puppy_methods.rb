class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do 
      puts "Woof"
    end
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(human_years)
    dog_years = human_years * 10
    dog_years
  end

  def bark
    puts "bow wow"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end
end


class Cat

  def initialize
    puts "Initializing new cat instance ..."
  end

  def run
    puts "The kitten is running"
  end

  def meow(int)
    int.times do
      puts "Meow"
    end
  end

  def toys(int)
    puts "The kitten has #{int} toys."
  end

end


Fido = Puppy.new
Fido.fetch("ball")
Fido.speak(5)
Fido.roll_over
p Fido.dog_years(3)
Fido.bark

all_cats = []

50.times do |int|
  all_cats << Cat.new
end

all_cats.each do |cat|
  cat.run
  cat.meow(3)
  cat.toys(5)
end









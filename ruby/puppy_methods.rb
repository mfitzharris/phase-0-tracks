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


Fido = Puppy.new
Fido.fetch("ball")
Fido.speak(5)
Fido.roll_over
p Fido.dog_years(3)
Fido.bark
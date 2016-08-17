#define Santa class with three instance methods
class Santa

  def initialize
    p "Initializing Santa instance..."
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie}!"
  end

end



#TEST CODE
Kris_Kringle = Santa.new
Kris_Kringle.speak
Kris_Kringle.eat_milk_and_cookies("short bread cookie")
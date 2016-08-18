module Shout
  def yell_angrily(words)
    words.upcase + "!!!" + " >:0"
  end

  def yell_happily(words)
    words + "!!!" + " :) :D"
  end
end


class Child
  include Shout
end

class Old_Man
  include Shout
end


#driver code
kid = Child.new
p kid.yell_happily("Woohoo")

grandpa = Old_Man.new
p grandpa.yell_angrily("Get off my lawn")




########################
####  RELEASE 1  #######
########################

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :D :D :D"
#   end
# end

# #driver code
# p Shout.yell_angrily("Hey get back here")
# p Shout.yelling_happily("Wow, that's awesome")
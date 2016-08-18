module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :D :D :D"
  end
end

#driver code
p Shout.yell_angrily("Hey get back here")
p Shout.yelling_happily("Wow, that's awesome")
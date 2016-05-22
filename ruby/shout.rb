=begin
# RELEASE 1 CODE

module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end

  def self.yell_happily(words)
    ":)" + words + ":)"
  end
end

# DRIVER CODE
puts "This is a test of the yell angirly method:"
p Shout.yell_angrily("What is your problem")

puts "This is a test of the yell happily method:"
p Shout.yell_angrily("I love coding")
=end

# RELEASE 3 CODE
module Shout
  def yell_happily(words)
    words + " Yeah baby! :)"
  end

  def yell_angrily(words)
    words.upcase + " Come on!"
  end
end

class Human
  include Shout
end

class Lion
  include Shout
end

# DRIVER CODE TO test
human = Human.new
puts "This is testing the Human class with the Shout module:"
p human.yell_happily("I love coding!")
p human.yell_angrily("What is this error.")

lion = Lion.new
puts "This is testing the Lion class with the Shout module:"
p lion.yell_happily("Let's hunt!")
p lion.yell_angrily("Whhere are all the gazelles?")

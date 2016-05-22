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
  def say_it_loud(words)
    words.upcase + "Yeah baby!"
  end
end

class human
  include Shout
end

class lion
  include Shout
end

class Santa

  def initialize
    puts "initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

end


# DRIVER CODE

# We can test our initialize method like this.
puts "This is a test of our 'initialize' instance method:"
saint_nick = Santa.new

# We can test our speak method like this.
puts "This is a test of our 'speak' instance method:"
saint_nick.speak

# We can test our eat_milk_and_cookies method like this.
puts "This is a test of our 'eat_milk_and_cookies' instance method:"
saint_nick.eat_milk_and_cookies("chocolate chip")

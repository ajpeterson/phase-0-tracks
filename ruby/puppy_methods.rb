class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def roll_over
    puts "*rolls over*"
  end

end

# DRIVER Code

# Create new instance of Puppy class
Cinnamon = Puppy.new

# Test of our fetch instance method
puts "This is a test of the 'fetch instance method:'"
Cinnamon.fetch

# Test of our roll_over instance method
puts "This is a test of our 'roll_over' instance method:"
Cinnamon.roll_over

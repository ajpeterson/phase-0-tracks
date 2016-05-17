class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age_int)
    puts age_int * 7
  end

  def licks_face
    puts "I liked your face!"
  end

end

# DRIVER Code

# Create new instance of Puppy class
Cinnamon = Puppy.new

# Test of our .fetch instance method
puts "This is a test of the 'fetch' instance method:"
Cinnamon.fetch("ball")

# Test of our .speak instance method
puts "This is a test of our 'speak' instance method:"
Cinnamon.speak(4)

# Test of our .roll_over instance method
puts "This is a test of our 'roll_over' instance method:"
Cinnamon.roll_over

# Test of our .dog_years instance method
puts "This is a test of our 'dog_years' instance method:"
Cinnamon.dog_years(10)

# Test of our .licks_face instance method
puts "This is a test of our 'licks_face' instance method:"
Cinnamon.licks_face

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

  def initialize
    puts "Initializing new puppy instance..."
  end
end


class Cars

  def initialize
    puts "Initializing new cars instance..."
  end

  def color_of_car(color)
    puts "Your car is #{color}."
  end

  def travel
    puts "Enjoy your trip."
  end
end

cars_array = []
index = 0

while index < 50
  cars_array.push(Cars.new)
  index += 1
end

cars_array.each do |car|
  car.travel
  car.color_of_car("red")
end

# DRIVER CODE for Cars class
jeep = Cars.new
jeep.color_of_car("blue")
jeep.travel(500, 200)


# DRIVER CODE for Puppy class
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

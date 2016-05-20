class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  # getter methods for attributes
  def celebrate_birthday
    @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end
end


# DRIVER CODE

# An array of our possible genders
gender_list = ["female", "male", "transgender", "demigender", "bigender", "genderfluid", "hijira", "polygender", "x-gender", "N/A"]

# An array of our possible ethnicities
ethnicity_list = ["black", "Latino", "caucasion", "Asian", "Mystical Creature", "Ancient God", "Middle Eastern", "Native American", "Nordic", "N/A"]

# An empty array to capture newly initialized Santas
santas = []

santa = Santa.new("male", "caucasion")
p santa.celebrate_birthday
p santa.get_mad_at("Vixen")




=begin
# We can test our initialize method like this.
puts "This is a test of our 'initialize' instance method:"
saint_nick = Santa.new("Female", "Asian")

# We can test our speak method like this.
puts "This is a test of our 'speak' instance method:"
saint_nick.speak

# We can test our eat_milk_and_cookies method like this.
puts "This is a test of our 'eat_milk_and_cookies' instance method:"
saint_nick.eat_milk_and_cookies("chocolate chip")
=end

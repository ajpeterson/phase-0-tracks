=begin
--------PSEUDOCODE FOR SANTA PROGRAM----------
Take input from user on many Santas they would like to sumulate
Loop through the total number provided
  - Print out Santas randomly generated gender
  - Print Santas randomly generated ethnicity
  - Print Santas randomly generated age between 0 and 140
  - Print Santas speak instance method response
  - Print Santas eat_milk_and_cookies instance method response
On loop end
  - Puts you Santa simulation is complete.
=end

class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    p "initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy Holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end

  # methods for attributes
  def celebrate_birthday
    @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

end

# An array of our possible genders
gender_list = ["female", "male", "transgender", "demigender", "bigender", "genderfluid", "hijira", "polygender", "x-gender", "gender neutral", "N/A"]

# An array of our possible ethnicities
ethnicity_list = ["black", "Latino", "caucasion", "Asian", "Mystical Creature", "Ancient God", "Middle Eastern", "Native American", "Nordic", "Canadian", "N/A"]

# An empty array to capture newly initialized Santas
santas = []

puts "How many Santas would like created for your simulation?"
number_of_santas = gets.chomp.to_i

santa = Santa.new(gender_list, ethnicity_list)

number_of_santas.times { |count| puts "#{santa.speak} Santa \##{count + 1} is #{gender_list.sample}, #{ethnicity_list.sample} and #{age = rand(140)} years old." }

=begin
-------# DRIVER CODE-------
# We can test our initialize method like this.
puts "This is a test of our 'initialize' instance method:"
saint_nick = Santa.new("Female", "Asian")

# We can test our speak method like this.
puts "This is a test of our 'speak' instance method:"
saint_nick.speak

# We can test our eat_milk_and_cookies method like this.
puts "This is a test of our 'eat_milk_and_cookies' instance method:"
saint_nick.eat_milk_and_cookies("chocolate chip")

# iterate through gender_list to create new instances of Santa with gender and ethnicity
puts "Iterating through genders to create new instances of Santa."
gender_list.length.times do |i|
  puts "Creating new Santa with #{gender_list[i]} and #{ethnicity_list[i]}."
  santas << Santa.new(gender_list[i], ethnicity_list[i])
=end


# Driver code to test attribute methods
santa = Santa.new("male", "caucasion")
p santa
p santa.celebrate_birthday
p santa.get_mad_at("Vixen")

# driver code to test getter methods
puts "Santa is a #{santa.ethnicity} #{santa.gender}."
puts "Santa is #{santa.age} years old."

# driver code to test gender setter method
santa.gender= "female"
puts "Santa's new gender is #{santa.gender}."

# Virus Predictor

# I worked on this challenge [by myself, with: Ellie Reid].
# We spent 90 minutes on this challenge.
# I spent an additional 30 minutes finishing up on my own.

# EXPLANATION OF require_relative
# Require relative includes the data from a separate file in the same directory. It uses the directory the program resides in. Require uses the 'current directory' the program is being run from.
#
require_relative 'state_data'

class VirusPredictor

  # Intialize instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

   # Calls methods and uses neccessary instance variables as parameters.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Uses if else conditional logic to determine deaths using instance variables as parameters. Then prints a statement listing the detahs for a particular state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Uses if else conditional logic to determine rate of spread using population_densityand state instance variables as parameters, with a default of 0.0. Prints a statement that gets added to the statement from predicted_deaths.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

STATE_DATA.each do |state_name, demographics|
  state = VirusPredictor.new(state_name, demographics[:population_density], demographics[:population])
  state.virus_effects
end




=begin
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================

# Reflection Section
1. The first hash syntax uses a string as the key and hash rocket (=>) to denote the value. The second syntax (the hash within the hash) uses symbols as the keys and therefore no hash rocket.

2. Require relative includes the data from a separate file in the same directory. It uses the directory the program resides in. Require uses the 'current directory' the program is being run from.

3. You can iterate through a hash using block code with .each. You could also use a while loop and the length of the hash to help set parametersfor the loop.

4. What sttod out about the variables was that they were redundant, but also they were instance variables so they did not need to be passed into any methods, they could just be used.

5. While it is still not completely solid, working through iteration over a hash with block code again was helpful.

=end

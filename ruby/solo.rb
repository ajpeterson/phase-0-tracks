# 6.4 SOLO CHALLENGE

=begin
-----DESIGN FOR CLASS-----

CLASS:
Soccer Players

CHARACTERISTICS:
Age: varies
Position: varies
Games played: varies
Years with team: varies

BEHAVIORS :
Score goals
Create assists
Fouls committed
=end

class SoccerPlayer

  attr_reader :years_with_team, :age
  attr_accessor :games_played, :position

  def initialize(years_with_team, age)
    @years_with_team = years_with_team
    @age = age
    @games_played = 0
    @position = ["forward", "winger", "midfield", "fullback", "center back", "goalie"]
  end

  def goals_scored(goals)
    puts "Goals scored = #{goals}"
  end

  def foul_committed
    puts "*CRUNCH* That was a poor tackle!"
  end

  def games_played(appearances)
    puts "Number of appearances this season = #{appearances}"
  end

  def position_played
    @position.sample
  end
end

player_list = []
player_creation_complete = false

puts "Lets create a team of soccer players."

until player_creation_complete

  puts "How old is the player?"
  age = gets.chomp.to_i

  puts "How long have they been on the team?"
  years_with_team = gets.chomp.to_i

  puts "Would you like to add another player?"
  user_response = gets.chomp

  if user_response == "no"
    puts "Your team has been created:"
    player_creation_complete = true
  else
    player = SoccerPlayer.new(age, years_with_team)
    player_list.push
  end

end

player_list.each do
  puts "Soccer player: #{age} years old, #{years_with_team} year(s) on team, plays #{player.position_played}."
end

=begin
# DRIVER CODE for Testing
puts "This is a test of our 'initialize' instance method:"
p player = SoccerPlayer.new(5, 28)

puts "This is a test of our 'goals_scored' instance method:"
player.goals_scored(18)

puts "This is a test of our 'foul_committed' instance method:"
player.foul_committed

puts "This is a test of our 'games_played' instance method:"
player.games_played(33)

puts "This is a test of our 'position_played' instance method:"
p player.position_played
=end

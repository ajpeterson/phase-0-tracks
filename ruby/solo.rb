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
    puts "Season goal count = #{goals}"
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

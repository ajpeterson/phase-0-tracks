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

  def initialize(years_with_team, age)
    @years_with_team = years_with_team
    @age = age
    @games_played = 0
    @position = ["forward", "winger", "midfield", "fullback", "center back", "goalie"]
  end

end

# DRIVER CODE for Testing

puts "This is a test of our 'initialize' instance method:"
p player = SoccerPlayer.new(5, 28)

# This was a Pairing Session between 
# Marty McLaughlin and Andrew Peterson

approx_age = nil

puts "What's your hamsters name?"
hamsters_name = gets.chomp
puts "How loud is your hamster between 1-10?"
volume_level = gets.chomp.to_i
puts "What's the fur color?"
fur_color = gets.chomp
puts "Is this hamster available for adoption?"
adoption = gets.chomp
puts "Whats the approximate age of the hamster?"
if approx_age == nil
	approx_age = gets.chomp
else
	approx_age = approx_age.to_f
end

if adoption == "yes" || adoption == "Yes" || adoption == "y" || adoption == "Y"
	adoption = "y"
else
	adoption = "n"
end

puts "Hamester's Name = #{hamsters_name}"
puts "Volume Level = #{volume_level}"
puts "Fur Color = #{fur_color}"
puts "Adoptable = #{adoption}"
puts "Approximate Age = #{approx_age}"

puts "What is your name?"
user_name = gets.chomp

puts "How old are you?"
user_age = gets.chomp.to_i
puts "What year were you born?"
user_birth_year = gets.chomp.to_i

if user_age == (2016 - user_birth_year)
  user_age = true
else
  user_age = false
end

puts "We LOVE garlic bread. Should we order some for you? (y/n)"
garlic_response = gets.chomp

if garlic_response == "y" || garlic_response == "Y"
  garlic_response = true
else
  garlic_response = false
end

puts "Would you like to enroll in the company health insurance program? (y/n)"
insurance_response = gets.chomp

if insurance_response == "y" || insurance_response == "Y"
  insurance_response = true
else
  insurance_response = false
end


if user_age && (garlic_response || insurance_response)
  puts "Probably not a vampire."
elsif user_age == false && (garlic_response == false || insurance_response == false)
  puts "Probably a vampire."
elsif user_age == false && garlic_response == false && insurance_response == false
  puts "Almost certainly a vampire."
else
  puts "Results inconclusive."
end

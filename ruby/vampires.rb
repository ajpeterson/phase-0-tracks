# Questionaire for new hires

puts "How many new hires will be processed today?"
employees_processed = gets.chomp.to_i

new_hires = 1
while new_hires <= employees_processed

  puts "What is your full name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i

  puts "We love garlic bread here. Should we order some for you?"
  garlic = gets.chomp

  puts "Would you like to enroll in the company's health coverage?"
  health_insurance = gets.chomp


  if age == (2016 - birth_year)
    age = true
  else
    age = false
  end

  if garlic == "yes" || garlic == "Yes" || garlic == "y" || garlic == "Y"
  	garlic = true
  else
  	garlic = false
  end

  if health_insurance == "yes" || health_insurance == "Yes" || health_insurance == "y" || health_insurance == "Y"
  	health_insurance = true
  else
  	health_insurance = false
  end

  if age == true && (garlic == true || health_insurance == true)
      puts "Probably not a vampire"
  elsif age == false && (garlic == false || health_insurance == false)
      puts "Probably a vampire"
  elsif age == false && garlic == false && health_insurance == false
      puts "Almost certainly a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
      puts "Definitely a vampire"
  else
      puts "Results inconclusive"
  end
  new_hires += 1
end


puts "What allergies do you have? Please type 'done' once all allergies are listed."
allergy = gets.chomp

while allergy != "done" && allergy != "sunshine"
	puts "Please list next allergy"
	allergy = gets.chomp

	if allergy == "sunshine"
		puts "Probably a vampire"
	end
end

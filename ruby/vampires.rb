# Questionaire for new hires
puts "How many new hires will be processed today?"
employees_processed = gets.chomp.to_i

new_hires = 1
while new_hires <= employees_processed

	# Gather employee information
	puts "What is your full name?"
	name_input = gets.chomp

	is_vampire = (name_input == "Drake Cula" || name_input == "Tu Fang")

	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	if age == (2016 - birth_year)
	  age = true
	else
	  age = false
	end

	puts "We love garlic bread here. Should we order some for you?"
	garlic = gets.chomp

	if garlic == "yes" || garlic == "Yes" || garlic == "y" || garlic == "Y"
	  garlic = true
	else
	  garlic = false
	end

	puts "Would you like to enroll in the company's health coverage?"
	health_insurance = gets.chomp

	if health_insurance == "yes" || health_insurance == "Yes" || health_insurance == "y" || health_insurance == "Y"
	  health_insurance = true
	else
		health_insurance = false
  end

	puts "What allergies do you have? Please type 'done' once all allergies are listed."
	allergy = gets.chomp

	while allergy != "done" && allergy != "sunshine"
		puts "Please list next allergy"
		allergy = gets.chomp
	end


# Check employee responses to verify vampire or not.
	if !is_vampire
	  puts "Definitely a vampire"
	elsif allergy == "sunshine"
	  puts "Probably a vampire"
  elsif age && (garlic || health_insurance)
	  puts "Probably not a vampire"
	elsif age == false && (garlic == false || health_insurance == false)
	  puts "Probably a vampire"
	elsif age == false && garlic == false && health_insurance == false
	  puts "Almost certainly a vampire"
	else
	  puts "Results inconclusive"
	end

  new_hires += 1

  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

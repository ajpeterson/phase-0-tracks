# Ask designer for client name
#   -save value to key in hash
# Repeat previous steps for clients age, nmuber of children, home square footage and decor theme
# Print client information for review
# Prompt designer to review and confirm if correct or if needed make a change
# if changes are needed
#   - allow designer to re-enter value for a specific question and print updated client information.
#   - end program

# Initialize hash
client_information = {}

# Questions to ascertain client information
puts "What is the client's full name?"
client_information[:name] = gets.chomp

puts "What is the client's age?"
client_information[:age] = gets.chomp.to_i

puts "How many children does the client have?"
client_information[:children] = gets.chomp.to_i

puts "What is the square footage of the home?"
client_information[:square_ft] = gets.chomp.to_i

puts "The client likes modern decor? (T/F)"
modern = gets.chomp
# Conditionals modern decor question
if modern == "t" || modern == "T"
  client_information[:modern] = true
else
  client_information[:modern] =  false
end

puts "The client likes rustic decor? (T/F)"
rustic = gets.chomp
# Conditionals rustic decor question
if rustic == "t" || rustic == "T"
  client_information[:rustic] = true
else
  client_information[:rustic] =  false
end

puts "Please provide the name of a secondary contact."
client_information[:second_contact] = gets.chomp

puts "What is the secondary contacts phone number?"
client_information[:second_contact_phone] = gets.chomp

# Prints hash to screen
p client_information

# Prompt designer to review information
puts "Please review the information any errors. If a correction is needed, please specify what needs to be corrected? If there are no errors please enter: none."
review = gets.chomp.to_sym
if review == :none
  p "Thank you, this profile is complete."
else
  p "What is the updated response for the question being changed?"
  new_input = gets.chomp
  if new_input == "t" || new_input == "T"
    new_input = true
  elsif new_input == "f" || new_input == "F"
    new_input = false
  else
    new_input = new_input.to_sym
  end
end

update_information = {review => new_input}
p update_information

client_information.merge!(update_information)
p client_information

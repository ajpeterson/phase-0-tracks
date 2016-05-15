# Take in a full_name as an argument
# Convert full_name into an array of two strings [first_name, last_name]
#   - Reverse the order of the array so last_name is listed first and first_name second
#   - Split the array in an array of individual characters
#   - Iterate through the array of individual characters changing each vowel into the next vowel in from a, e, i, o, u
#   - Iterate through the array changing each consonant to the next consonant value in the alphabet
#   - Join the converted letters back together to form a new spy_name

full_name = "Andrew Peterson".split('')

def cipher(create_spy)
	create_spy.map! {|letter| letter.next}
	new_string = create_spy.join('')
	new_string[6] = ' '
	new_string.split(' ')
end

cipher(full_name)





=begin
# Take in a full_name as an argument
# Convert full_name into an array of two strings [first_name, last_name]
#   - Reverse the order of the array so last_name is listed first and first_name second
#   - Split the array into an array of individual characters
#   - Iterate through the array of individual characters changing each vowel into the next vowel from a, e, i, o, u
#   - Iterate through the array changing each consonant to the next consonant value in the alphabet
#   - Join the converted letters back together to form a new spy_name

#puts "What is your full name (First Last)?"
full_name = "Andrew Peterson".split('')


def cipher(create_spy)
	create_spy.map! {|letter| letter.next}
	new_string = create_spy.join('')
	new_string[6] = ' '
	new_string.split(' ')
	#new_string.class
	#new_string.gsub(/[aeiouAEIOU]/){|letter| letter.next}

end
cipher(full_name)
#spy_name = cipher(full_name)
#p spy_name
=end

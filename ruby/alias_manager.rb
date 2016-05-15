# Take in a full_name as an argument
# Convert full_name into an array of two strings [first_name, last_name]
#   - Reverse the order of the array so last_name is listed first and first_name second
#   - Split the array in an array of individual characters
#   - Iterate through the array of individual characters changing each vowel into the next vowel in from a, e, i, o, u
#   - Iterate through the array changing each consonant to the next consonant value in the alphabet
#   - Join the converted letters back together to form a new spy_name

alias_complete = false
until alias_complete

	puts "Enter full name for alias. When done enter 'quit'."
	full_name = gets.chomp.split('')

	if full_name == "quit".split('')
		p "Your aliases are noted."
		alias_complete = true
	else
		def cipher(create_alias)
			create_alias.map! {|letter| letter.next}
			alias_string = create_alias.join('')
			alias_string['!'] = ' '
			alias_string.split(' ')
		end

		spy_name = cipher(full_name)
		p spy_name
	end

end

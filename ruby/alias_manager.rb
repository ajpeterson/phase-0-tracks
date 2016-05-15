# Ask user for full name
# Convert full_name into an array
#   - iterate through array changing the letters to the next letter in the alphabet
#   - join letters to create a string of the alias_listing
#   - split the string into two seperate words (last name, first name)
#   - print spy_name
# Add each entry to a hash data structure
# Print out user's name and alias_listing

alias_listing = {}
alias_complete = false

until alias_complete

	puts "Enter full name for alias. When done enter 'quit'."
	full_name = gets.chomp
	name = full_name.split('')

	if full_name == "quit"
		p "Your aliases are noted."
		alias_complete = true
	else
		def cipher(create_alias)
			create_alias.map! {|letter| letter.next}
			alias_string = create_alias.join('')
			alias_string['!'] = ' '
			alias_string.split(' ')
		end

		spy_name = cipher(name)
		p spy_name
		alias_listing.store(full_name, spy_name)
	end

end

alias_listing.each do |full_name, spy_name|
	puts "#{full_name} is also known as #{spy_name}."
end

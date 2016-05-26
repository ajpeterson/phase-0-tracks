# Ask user for full name
# Convert full_name into an array
#   - iterate through array changing the letters to the next letter in the alphabet
#   - join letters to create a string of the alias_listing
#   - split the string into two seperate words (last name, first name)
#   - print spy_name
# Add each entry to a hash data structure
# Print out user's name and alias_listing

def cipher(create_alias)
	create_alias.map! {|letter| letter.next}
	alias_string = create_alias.join('')
	alias_string['!'] = ' '
	alias_string.split(' ')
end

alias_listing = {}
alias_complete = false

until alias_complete

	puts "Enter full name for alias. When done enter 'quit'."
	full_name = gets.chomp
	name = full_name.split('')

	if full_name == "quit"
		puts "Your aliases are noted."
		alias_complete = true
	else
		spy_name = cipher(name)
		final_alias = spy_name.join(' ')
		alias_listing.store(full_name, final_alias)
	end

end

alias_listing.each do |full_name, final_alias|
	puts "#{full_name} is also known as #{final_alias}."
end

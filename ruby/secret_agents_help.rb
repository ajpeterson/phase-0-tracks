#Original code from secret_agents.rb
# Encrypt Method
# - Ask user for string
# - Set response to user_input
# - While user_input index is less than user_input length
#   - return user_input index and advance to next letter
# - End Encrypt
# - Print encrypted user_input to screen

# Decrypt Method
# - Set alphabet = "a..z"
# - Take the encrypted user_input
# - While user_input index is less than user_input length
#   - find the position of user_input index
#   - using the position of user_input index return the position minus one in     alphabet
# - End Decrypt
# - Print decrypted user_input to screen


puts "Please provide your password"
  user_input = gets.chomp

# Encrypts password entry for security
def encrypt(password)
  index = 0
  while index < password.length
    password[index] = password[index].next!
    index += 1
  end
  return password
end
cipher = encrypt(user_input.dup)
p cipher

# Decrypts encrypted password
def decrypt (encrypted_password)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < encrypted_password.length
    letter = encrypted_password[index]
    position = alphabet.index(letter) #magic
    encrypted_password[index] = alphabet[position-1]
    index += 1
  end
  return encrypted_password
end
plaintext = decrypt(cipher.dup)
p plaintext




#CODE FROM OFFICE HOURS WITH MULTIPLE SOLUTIONS

# puts "Please provide your password"
#   user_input = gets.chomp
user_input = 'wombat'
p user_input
# Encrypt Method
def encrypt(password)
  index = 0
  while index < password.length
    password[index] = password[index].next!
    index += 1
  end
  return password
end
cipher = encrypt(user_input.dup)
p cipher
# Decrypt Method
def decrypt (encrypted_password)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  rev_alphabet = alphabet.reverse
  index = 0
  while index < encrypted_password.length
    # way 1
    # letter = encrypted_password[index]
    # position = rev_alphabet.index(letter) #magic
    # encrypted_password[index] = rev_alphabet[position+1]
    # way 2
    # letter = encrypted_password[index]
    # position = alphabet.index(letter) #magic
    # encrypted_password[index] = alphabet[position-1]
    #way 3
    encrypted_password[index] = alphabet[alphabet.index(encrypted_password[index])-1]
    index += 1
  end
  return encrypted_password
end

#def rotate(string, shift =1)
#  string.split('').map do |char|
#    ((char.ord+shift)%256).chr
#  end.join('')
#end

plaintext = decrypt(cipher.dup)
p plaintext
#p [user_input, cipher, plaintext]
#p user_input == plaintext
#p rotate(rotate(user_input), -1)




#CODE WITH USER INTERFACE

puts "Would like to encrypt or decrypt a password?"
status = gets.chomp

if status == "encrypt" || status == "Encrypt"
	status = "encrypt"
end

if status == "decrypt" || status == "Decrypt"
	status = "decrypt"
end

puts "Please provide your password"
user_input = gets.chomp

if status == "encrypt"
	# Encrypts password entry for security
	def encrypt(password)
	  alphabet = "abcdefghijklmnopqrstuvwxyz"
	  index = 0
	  letter_edge = password[index]
	  position_edge = alphabet.index(letter_edge)
	  while index < password.length
	  	if position_edge = 25
	  		letter_edge = 0
	  	end
	    letter = password[index]
	    position = alphabet.index(letter) #magic
	    password[index] = alphabet[position].next!
	    index += 1
	  end
	  return password
	end
	cipher = encrypt(user_input.dup)
	p cipher
end

if status == "decrypt"
	# Decrypts encrypted password
	def decrypt (encrypted_password)
	  alphabet = "abcdefghijklmnopqrstuvwxyz"
	  index = 0
	  while index < encrypted_password.length
	    letter = encrypted_password[index]
	    position = alphabet.index(letter) #magic
	    encrypted_password[index] = alphabet[position-1]
	    index += 1
	  end
	  return encrypted_password
	end
	plaintext = decrypt(user_input.dup)
	p plaintext
end

if status == "encrypt"
	p "Your password has been encrypted."
end
if status == "decrypt"
	p "Your password has been decrypted."
end

puts "what is your password"
user_input = gets.chomp

#Edge case logic
# Encrypt Method
def encrypt(password)
  index = 0
  while index < password.length
  #if passord[index] is equal to a "z" ... return an "a"
  	if password[index] == "z"
  		password[index] = "a"
  #else
  else
    password[index] = password[index].next!
   end
    index += 1
  end
  return password
end
p encrypt(user_input)

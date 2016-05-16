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

#METHOD DECLARATIONS
if status == "encrypt"
# Encrypts password entry for security
  def encrypt(password)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    index = 0
    while index < password.length
      letter = password[index]
      position = alphabet.index(letter) #magic

      if password[index] == "z"
        password[index] = "a"
      else
        password[index] = alphabet[position].next!
      end

      index += 1
    end
    return password
  end
  cipher = encrypt(user_input.dup)
  p cipher
  p "Your password has been encrypted."
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
  p "Your password has been decrypted."
end

# OUR DRIVER CODE

# ask user for a password
#puts "What is your password?"
#user_input = gets.chomp

# encrypt the user's password
#puts "We can encrypt your password like this:"
#p encrypt(user_input)

# decrypt the user's password
#puts "We can decrypt your password like this:"
#p decrypt(user_input)

# confirm that request has been fulfilled
#puts "Password request complete."

# Release 4 Method call
#decrypt(encrypt("swordfish"))

#this works because the computer processes
#parentheses first from inside working outward. So it
#is first calling the encrypt method on "swordfish"
#and then calling the decrypt method.

# GPS 2.2
#Andrew Peterson
#Mason Brown

#Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # initialize an empty hash
  # split the input at " " and create array
  # iterate through array with each
  # use to_sym on items
  # push into hash with .store and a default value of 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: use .store to add item and quantity to grocery list
# output: print hash

# Method to remove an item from the list
# input: hash key
# steps: use .delete to remove key value pair from grocery list
# output: print hash

# Method to update the quantity of an item
# input: hash key and new quantity
# steps: call the hash key on the hash and update the quantity
# output: print hash

# Method to print a list and make it look pretty
# input: grocery_list hash
# steps: use .each to loop through hash and print items in string
# output: string


def create_list(items)

	grocery_list_hash = {}
	list_array = items.split(" ")

	list_array.each do |item|
		grocery_list_hash.store(item.to_sym, 1)
	end

	grocery_list_hash
end

def add_item(item, quantity, hash)
	hash.store(item.to_sym, quantity)
end

def remove_item(item, hash)
	hash.delete(item.to_sym)
end

def update_quantity(item, quantity, hash)
	hash[item.to_sym] = quantity
end

def print_list(hash)
	hash.each do |item, quantity|
 		puts "You need to get #{quantity} of #{item}."
 	end
end

# Driver Code for initial testing

=begin
list = create_list("coffee sugar cream")
add_item("non-dairy creamer", list)
remove_item(:cream, list)
update_quantity(:sugar, 10, list)
print_list(list)
=end

# DRIVER CODE for testing Release 3
list = create_list("coffee sugar milk eggs")

# Test code to add items to lit
add_item("lemonade", 2, list)
add_item("tomatoes", 3, list)
add_item("onions", 1, list)
add_item("ice cream", 4, list)

# Test code to remove item from list
remove_item("lemonade", list)

# Test code to update quantity of a list item
update_quantity("ice cream", 1, list)

print_list(list)

=begin
----------RELEASE 5: Reflection----------
Pseudocode is no longer just something that has to be done, but an essential component of my coding. Writing out the program and methods in English makes coding much easier by breaking down the challenge into smaller, manageable pieces.

A hash works better for this challenge so you can store key, value pairs for the items in your list. Doing so makes it easier to access them later to make updates. We did use an array intially to get our input into a data structure. However, with the need for a correlating quantity it was easier to then convert that array into a hash with a default quantity.

A method returns the last thing its asked for.

You can pass pretty much anything you need to into a method. For this challenge we passed in strings, integers and hashes. You can also pass other methods and arrays into methods.

You can pass information between methods by establishing variables for the information the methods need to access and then passing that variable into the method as an argument. You can also do this by passing a method itself into another method.

The concepts have formatting were solidified. Keeping methods seperate from user interface or printing. Scope was solidified a bit more, but can still use some work. The concept of establishing variables so methods can use the same information now makes more sense as well.
=end

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

def add_item(item, hash)

	hash.store(item.to_sym, 1)

end

def remove_item(item, hash)

	hash.delete(item)
end

def update_quantity(item, quantity, hash)

	hash[item] = quantity
end

def print_list(hash)

	hash.each do |item, quantity|
 		puts "You need to get #{quantity} of #{item}."
 	end
end


list = create_list("coffee sugar cream")
add_item("non-dairy creamer", list)
remove_item(:cream, list)
update_quantity(:sugar, 10, list)
print_list(list)

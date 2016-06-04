=begin
BABY TRACKER:
Create a class for babies
  - initialize method will create new babies table and set attributes
    - table will include (id integer primary key, first name, last name, age (in weeks), *emergency contact, *emergency contact phone number, special needs)
    - accept first name and last name as arguments
    - attributes = last diaper, last bottle (both attr_accessor)
  - method to add a new baby to the table
    - input: first name and last name
    - use INSERT sql call to add a new baby to the table
    - output: new baby will show as last entry in table
  - method to update a babies age (which set at 0 by default)
    - input: new age in weeks
    - use UPDATE sql call to insert new data into table
    - output: new age will show in age column for baby that was updated
  - method to add a comment for special needs
    - input: string of special instructions
    - use UPDATE sql call to add or update the special needs of a baby
    - output: new instructions will show under special needs

* will add in if time permits
=end

class Babies

  def initialize
  end

  def add_baby
  end


end

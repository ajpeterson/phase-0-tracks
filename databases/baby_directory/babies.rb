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

# require gems
require 'sqlite3'
require 'faker'

#require_relative 'baby_tracker'

class Babies

  attr_accessor :last_diaper, :last_bottle

  def initialize
    db = SQLite3::Database.new("baby_tracker.db")
    db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS babies (
        id INTEGER PRIMARY KEY,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        age_in_weeks INT,
        special_needs VARCHAR(255)
      )
    SQL

    @last_diaper = last_diaper
    @last_bottle = last_bottle
  end

  def add_baby(db, first_name, last_name, age_in_weeks, special_needs)
    db.execute("INSERT INTO babies (first_name, last_name, age_in_weeks, special_needs) VALUES (?, ?)", [first_name, last_name, age_in_weeks, special_needs])
  end

  def age_update(db, age_in_weeks, id)
    db.execute("UPDATE babies SET age_in_weeks=?, WHERE id=?", [age_in_weeks, id])
  end

  def special_needs(db, special_needs, id)
    db.execute("UPDATE babies SET special_needs=?, WHERE id=?", [special_needs, id])
  end

end

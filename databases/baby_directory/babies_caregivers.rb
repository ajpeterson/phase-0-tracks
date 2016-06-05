=begin
BABY TRACKER:
Create a class for a junction table in a many to many relationship
  - initialize method will create new junction table
    - table will include (id integer primary key, last diaper, last bottle, babies_id, caregivers_id)
  - method to update time of last diaper
    - input: time of last diaper change as a string, baby id and caregiver id
    - use UPDATE sql call to change the time of last diaper change
    - output: updated time for last diaper change
  - method to update time of last bottle
    - input: time of last bottle change as a string, baby id and caregiver id
    - use UPDATE sql call to change the time of last bottle feeding
    - output: updated time for last bottle feeding

=end

# require gems
require 'sqlite3'
require 'faker'

require_relative 'babies'

class Junction

  def initialize
    db = SQLite3::Database.new("baby_tracker.db")
    db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS babies_caregivers (
        id INTEGER PRIMARY KEY,
        last_diaper VARCHAR(255),
        last_bottle VARCHAR(255),
        babies_id INT,
        caregivers_id INT,
        FOREIGN KEY (babies_id) REFERENCES babies(id),
        FOREIGN KEY (caregivers_id) REFERENCES caregivers(id)
      )
    SQL

  end

  def diaper_update(db, last_diaper, babies_id, caregivers_id)
    db.execute("UPDATE babies_caregivers SET last_diaper=?, WHERE babies_caregivers.babies_id = ? AND babies_caregivers.caregivers_id = ?", [last_diaper, babies.id, caregivers.id])
  end

  def bottle_update(db, last_bottle, babies_id, caregivers_id)
    db.execute("UPDATE babies_caregivers SET last_bottle=?, WHERE babies_caregivers.babies_id = ? AND babies_caregivers.caregivers_id = ?", [last_bottle, babies.id, caregivers.id])
  end

end

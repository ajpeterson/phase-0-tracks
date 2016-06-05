=begin
BABY TRACKER:
Create a class for caregivers
  - initialize method will create new caregivers table and set attributes
    - table will include (id integer primary key, first name, last name, years experience, cpr certified, first aid certified)
    - attributes: cpr certified and firts aid certified set to false as default
  - method to update cpr certification
    - input: true
    - use UPDATE sql call to change certification from false to true
    - output: updated certification will show in table
  - method to update cpr certification
    - input: true
    - use UPDATE sql call to change certification from false to true
    - output: updated certification will show in table
  - method to update a caregivers experience
    - input: years experience entered as integer
    - use UPDATE sql call to insert new data into table
    - output: updated years experience will show in yrs_experience column

=end

# require gems
require 'sqlite3'
require 'faker'

#require_relative 'baby_tracker'

class Caregivers

  attr_accessor :cpr_cert, :first_aid_cert

  def initialize
    db = SQLite3::Database.new("baby_tracker.db")
    db.execute <<-SQL
      CREATE TABLE IF NOT EXISTS caregivers (
        id INTEGER PRIMARY KEY,
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        yrs_experience INT,
        cpr_cert BOOLEAN,
        first_aid_cert BOOLEAN
      )
    SQL

    @cpr_cert = false
    @first_aid_cert = false
  end

  def add_caregiver(db, first_name, last_name, yrs_experience, cpr_cert, first_aid_cert)
    db.execute("INSERT INTO caregivers (first_name, last_name, yrs_experience, cpr_cert, first_aid_cert) VALUES (?, ?, ?, ?, ?)", [first_name, last_name, yrs_experience, cpr_cert, first_aid_cert])
  end

  def experience_update(db, yrs_experience, id)
    db.execute("UPDATE caregivers SET yrs_experience=?, WHERE id=?", [yrs_experience, id])
  end

  def cpr_update(db, cpr_cert, id)
    db.execute("UPDATE caregivers SET cpr_cert=?, WHERE id=?", [cpr_cert, id])
  end

  def first_aid_update(db, cpr_cert, id)
    db.execute("UPDATE caregivers SET first_aid_cert=?, WHERE id=?", [first_aid_cert, id])
  end

end

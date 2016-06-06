=begin
This file contains the interaction for the baby TRACKER
 - require: babies.rb, caregivers.rb, babies_caregivers.rb
=end

# require gems
require 'sqlite3'
require 'faker'

require_relative 'babies'
require_relative 'caregivers'
require_relative 'babies_caregivers'

db = SQLite3::Database.new("baby_tracker.db")

# INITIALIZE classes to create tables in db
baby = Babies.new
caregiver = Caregivers.new
join = Junction.new

=begin
=================DRIVER CODE for TESTING====================
# TEST babies added to table
baby.add_baby(db, "Andrew", "Peterson", 12, "None")
baby.add_baby(db, "Nora", "Peterson", 10, "None")

# POPULATE babies table
15.times do
  baby.add_baby(db, Faker::Name.first_name, Faker::Name.last_name, rand(12), "None")
end

# POPULATE caregivers table
4.times do
  caregiver.add_caregiver(db, Faker::Name.first_name, Faker::Name.last_name, rand(12), @cpr_cert, @first_aid_cert)
end

# POPULATE babies_caregivers table
join.data_setup(db, "N/A", "N/A", 0, 0)

METHOD TESTS
baby.age_update(db, 9, 12)
baby.special_needs(db, "Allergic to peanuts.", 3)
caregiver.cpr_update(db, "true", 2)

=end
caregiver.experience_update(db, 2, 2)
caregiver.first_aid_update(db, "true", 1)

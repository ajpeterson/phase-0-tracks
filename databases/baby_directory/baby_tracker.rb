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
=================DRIVER CODE====================

# TEST babies added to table
baby.add_baby(db, "Andrew", "Peterson", 12, "None")
baby.add_baby(db, "Nora", "Peterson", 10, "None")

# POPULATE babies table
15.times do
  baby.add_baby(db, Faker::Name.first_name, Faker::Name.last_name, 0, "None")
end

# POPULATE caregivers table
4.times do
  caregiver.add_caregiver(db, Faker::Name.first_name, Faker::Name.last_name, rand(12), @cpr_cert, @first_aid_cert)
end
=end

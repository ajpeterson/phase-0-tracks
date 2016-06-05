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

# initialize babies class to create table
baby = Babies.new

# initialize caregivers class to create table
caregiver = Caregivers.new

# initialize junction class to create babies_caregivers join table
join = Junction.new

# test baby added to table
baby.add_baby(db, "Andrew", "Peterson", 12, "None")

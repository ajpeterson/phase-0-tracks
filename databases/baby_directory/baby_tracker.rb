=begin
This file contains the interaction for the baby TRACKER
 - require: babies.rb, caregivers.rb
=end

# require gems
require 'sqlite3'
require 'faker'

require_relative 'babies'
require_relative 'caregivers'
require_relative 'babies_caregivers'

db = SQLite3::Database.new("baby_tracker.db")

# initialize babies class to create table
Babies.new
# initialize caregivers class to create table
Caregivers.new
# initialize junction class to create babies_caregivers join table
Junction.new

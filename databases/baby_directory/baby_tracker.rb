=begin
This file contains the interaction for the baby TRACKER
 - require: babies.rb, caregivers.rb
=end

# require gems
require 'sqlite3'
require 'faker'

require_relative 'babies'
# require_relative 'caregivers'

db = SQLite3::Database.new("baby_tracker.db")
db.execute("babies.create_table")

# initialize babies class to create table

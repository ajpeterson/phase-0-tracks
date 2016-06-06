=begin
This file contains the interaction for the baby TRACKER
 - require: babies.rb, caregivers.rb, babies_caregivers.rb

 ADD method:
  - ask if adding baby or caregiver
  - if baby: collect baby info
    - first name
    - last name
    - age in weeks
    - special needs
    - call add baby method passing in collected data
  - else: collect caregiver info
    - first name
    - last name
    - years experience
    - cpr certification
    - first aid certification
    - call add caregiver method passing in collected data
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


def add(db, baby, caregiver, join)
  puts "Please specify if you would like to add a 'baby' or 'caregiver' to the directory."
  user_response = gets.chomp.downcase

  if user_response == "baby"
    puts "Please provide baby's first name."
    first_name = gets.chomp
    puts "Please provide baby's last name."
    last_name = gets.chomp
    puts "Please provide baby's age in weeks (please enter a number)."
    age_in_weeks = gets.chomp.to_i
    puts "Please list any special needs for the baby."
    special_needs = gets.chomp

    baby.add_baby(db, first_name, last_name, age_in_weeks, special_needs)
    puts first_name + " " + last_name + " has been added to the baby directory."

    join.add_for_care(db, "N/A", "N/A", 0, 0)

  else
    puts "Please provide caregiver's first name."
    first_name = gets.chomp
    puts "Please provide caregiver's last name."
    last_name = gets.chomp
    puts "Please provide caregiver's years of experience (please enter a number)."
    yrs_experience = gets.chomp.to_i
    puts "Is the caregiver CPR certified? (y/n)"
    cpr_cert = gets.chomp.downcase
      if cpr_cert == "y"
        cpr_cert = "true"
      else
        cpr_cert = "false"
      end
    puts "Is the caregiver First Aid certified? (y/n)"
    first_aid_cert = gets.chomp.downcase
      if first_aid_cert == "y"
        first_aid_cert = "true"
      else
        first_aid_cert = "false"
      end

    caregiver.add_caregiver(db, first_name, last_name, yrs_experience, cpr_cert, first_aid_cert)
    puts first_name + " " + last_name + " has been added to the caregiver directory."
  end
end

add(db, baby, caregiver, join)

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
caregiver.experience_update(db, 2, 2)
caregiver.first_aid_update(db, "true", 1)
caregiver.add_caregiver(db, "Jared", "Peters", 3, "true", "true")
join.diaper_update(db, "9:15am", 2, 8)
join.bottle_update(db, "11:05am", 2, 9)
join.add_for_care(db, "N/A", "N/A", 0, 0)
=end

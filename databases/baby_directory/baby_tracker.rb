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

  PRINT method
    - ask if they want to print baby directory, caregiver directory or feeding/diaper directory
      - print selected directory
      - format output to be pretty
=end

# require gems
require 'sqlite3'
require 'faker'

require_relative 'babies'
require_relative 'caregivers'
require_relative 'babies_caregivers'

db = SQLite3::Database.new("baby_tracker.db")
db.results_as_hash = true

# INITIALIZE classes to create tables in db
baby = Babies.new
caregiver = Caregivers.new
join = Junction.new

#=============ADD METHOD BEGIN==============
def add(db, baby, caregiver, join)
  puts "Please specify if you would like to add a 'baby' or 'caregiver' to the directory."
  user_response = gets.chomp.downcase

  # collect info for new baby entry
  if user_response == "baby"
    puts "Please provide baby's first name."
    first_name = gets.chomp
    puts "Please provide baby's last name."
    last_name = gets.chomp
    puts "Please provide baby's age in weeks (Please enter a number)."
    age_in_weeks = gets.chomp.to_i
    puts "Please list any special needs for the baby."
    special_needs = gets.chomp

    baby.add_baby(db, first_name, last_name, age_in_weeks, special_needs)
    puts first_name + " " + last_name + " has been added to the baby directory."

    # auto adds baby to the bottle/diaper tracking table (babies_caregivers)
    join.add_for_care(db, "N/A", "N/A", 0, 0)

  # collect info for new caregiver entry
  else
    puts "Please provide caregiver's first name."
    first_name = gets.chomp
    puts "Please provide caregiver's last name."
    last_name = gets.chomp
    puts "Please provide caregiver's years of experience (Please enter a number)."
    yrs_experience = gets.chomp.to_i
    puts "Is the caregiver CPR certified (y/n)?"
    cpr_cert = gets.chomp.downcase
      if cpr_cert == "y"
        cpr_cert = "true"
      else
        cpr_cert = "false"
      end
    puts "Is the caregiver First Aid certified (y/n)?"
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

#=============UPDATE METHOD BEGIN==============
def update(db, baby, caregiver, join)
  puts "Please specify if you would like to update 'baby' information or 'caregiver' information."
  user_response = gets.chomp.downcase

  # added to end of each case to confirm updates completed
  thank_you_stmt = "Your request is complete and the directory updated."

  if user_response == "baby"
    puts "Please specify the baby's id number you wish to make changes to?"
    babies_id = gets.chomp.to_i

    puts "Please specify what you would like to update: a.) age, b.) special needs, c.) last bottle or d.) last diaper change (Please type corresponding letter.)"
    user_selection = gets.chomp.downcase

      case user_selection
      when "a"
        puts "Please specify the baby's new age in weeks (Please enter a number)."
        age_in_weeks = gets.chomp.to_i
        baby.age_update(db, age_in_weeks, babies_id)
        puts thank_you_stmt
      when "b"
        puts "Please specify any special needs for this baby."
        special_needs = gets.chomp
        baby.special_needs(db, special_needs, babies_id)
        puts thank_you_stmt
      when "c"
        puts "Please specify the time the last bottle feeding began (EX: 1:30pm)."
        last_bottle = gets.chomp
        puts "Please provide the caregiver's id number who administered the bottle."
        caregivers_id = gets.chomp.to_i
        join.bottle_update(db, last_bottle, caregivers_id, babies_id)
        puts thank_you_stmt
      else
        puts "Please specify the time of the last diaper change (EX: 1:30pm)."
        last_diaper = gets.chomp
        puts "Please provide the caregiver's id number who changed the diaper."
        caregivers_id = gets.chomp.to_i
        join.diaper_update(db, last_diaper, caregivers_id, babies_id)
        puts thank_you_stmt
      end
  else
    puts "Please specify the caregiver's id number you wish to make changes to?"
    caregivers_id = gets.chomp.to_i

    puts "Please specify what you would like to update: a.) years of experience, b.) CPR certification or c.) First Aid certification (Please type corresponding letter.)"
    user_selection = gets.chomp.downcase

      case user_selection
      when "a"
        puts "Please specify the updated years of experience for the caregiver (Please enter a number)."
        yrs_experience = gets.chomp.to_i
        caregiver.experience_update(db, yrs_experience, caregivers_id)
        puts thank_you_stmt
      when "b"
        puts "Please specify if the caregiver has completed CPR certification (y/n)."
        cpr_cert = gets.chomp.downcase
        if cpr_cert == "y"
          cpr_cert = "true"
        else
          cpr_cert = "false"
        end
        caregiver.cpr_update(db, cpr_cert, caregivers_id)
        puts thank_you_stmt
      else
        puts "Please specify if the caregiver has completed First Aid certification (y/n)."
        first_aid_cert = gets.chomp.downcase
        if first_aid_cert == "y"
          first_aid_cert = "true"
        else
          first_aid_cert = "false"
        end
        caregiver.first_aid_update(db, first_aid_cert, caregivers_id)
        puts thank_you_stmt
      end
  end
end

#=============PRINT METHOD BEGIN==============
def print(db, baby, caregiver, join)
  puts "Please specify which directory you wish to view: a.) baby, b.) caregiver or c.) feeding/diaper tracker (Please type the corresponding letter)."
  user_selection = gets.chomp.downcase

  case user_selection
  when "a"
    puts "-------- Current Baby Directory --------\n"
    babies = db.execute("SELECT * FROM babies")
    babies.each do |baby|
      puts "\n#{baby['first_name']} #{baby['last_name']} <=> ID: #{baby['id']} \nAge in Weeks: #{baby['age_in_weeks']}, Special Needs: #{baby['special_needs']}\n"
    end
  when "b"
    puts "-------- Current Caregiver Directory --------\n"
    caregivers = db.execute("SELECT * FROM caregivers")
    caregivers.each do |caregiver|
      puts "\n#{caregiver['first_name']} #{caregiver['last_name']} <=> ID: #{caregiver['id']}\nYears of Experience: #{caregiver['yrs_experience']} \nCPR Certification: #{caregiver['cpr_cert']}, First Aid Certification: #{caregiver['first_aid_cert']}\n"
    end
  else
    puts "-------- Bottle and Diaper Tracking --------\n"
    tracker = db.execute("SELECT * FROM babies_caregivers")
    tracker.each do |status|
      puts "\nBaby: #{status['babies_id']} <=> Last Feeding: #{status['last_bottle']}, Last Diaper Change: #{status['last_diaper']} \nCaregiver: #{status['caregivers_id']}\n"
    end
  end
end
print(db, baby, caregiver, join)
=begin
baby_directory = false
until baby_directory
  puts "Please specify if you wish to add a listing to the directory or update an existing entry (Please type add or update). Type 'quit' when finished adding and updating the directory."
  user_response = gets.chomp.downcase
  case user_response
  when "add"
    add(db, baby, caregiver, join)
  when "update"
    update(db, baby, caregiver, join)
  else
    puts "Thank you. Your additions and updates have been recorded."
    baby_directory = true
  end
end
=end

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

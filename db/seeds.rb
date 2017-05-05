# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

text = CSV.foreach('/Users/megankale/Documents/Internship/rakeTask/test-project/db/venues.csv') do |row|
  ven = Venue.new
  ven.name = row[0];
  # puts ven.name;
  ven.save;
  puts "there are #{Venue.count} rows"
end

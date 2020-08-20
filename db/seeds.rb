# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.destroy_all
puts "Venues destroyed"

User.destroy_all
puts "Users destroyed"

Match.destroy_all
puts "Match destroyed"

venue_one = Venue.create!(name: "Old Trafford",
    post_code: "M16 0RA",
    cost_per_hour: "£6",
    address_line_1: "Sir Matt Busby Way, Old Trafford, Manchester",
    surface: "Natural")

venue_two = Venue.create!(name: "Anfield",
    post_code: "L4 0TH",
    cost_per_hour: "£5",
    address_line_1: "Anfield Road, Liverpool",
    surface: "Hybrid")

venue_three = Venue.create!(name: "Stadium of Light",
    post_code: "SR5 1SU",
    cost_per_hour: "£3",
    address_line_1: "Stadium of Light, Sunderland",
    surface: "Artificial")

venue_four = Venue.create!(name: "Ewood Park",
    post_code: "BB2 4JF",
    cost_per_hour: "£3",
    address_line_1: "Ewood Park, Blackburn",
    surface: "Hybrid")

venue_five = Venue.create!(name: "Goodison Park",
    post_code: "L20 2BN",
    cost_per_hour: "£4",
    address_line_1: "Goodison Road, Walton, Liverpool",
    surface: "Natural")

puts "Venues created"

user_one = User.create!(email: "m.verratti@gmail.com",
  password: "aaaaaa")

user_two = User.create!(email: "a.morgan@gmail.com",
  password: "bbbbbb")

puts "Users created"

match_one = Match.create!(skill_level: "beginner",
    no_of_players: "5",
    start_time: "2pm",
    gender: "male",
    end_time: "3.30pm",
    venue_id: Venue.first.id,
    user_id: User.first.id)

match_two = Match.create!(skill_level: "advanced",
    no_of_players: "7",
    start_time: "7pm",
    gender: "female",
    end_time: "8pm",
    venue_id: Venue.last.id,
    user_id: User.last.id)

puts "Matches created"

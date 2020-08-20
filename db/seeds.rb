# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Venue.destroy_all
User.destroy_all
Matches.destroy_all

VENUES = [
  (name: "Old Trafford",
    postcode: "M16 0RA",
    cost: "£6",
    address: "Sir Matt Busby Way, Old Trafford, Manchester"),
  (name: "Anfield",
    postcode: "L4 0TH",
    cost: "£5",
    address: "Anfield Road, Liverpool"),
  (name: "Stadium of Light",
    postcode: "SR5 1SU",
    cost: "£3",
    address: "Stadium of Light, Sunderland"),
  (name: "Ewood Park",
    postcode: "BB2 4JF",
    cost: "£3",
    address: "Ewood Park, Blackburn"),
  (name: "Goodison Park",
    postcode: "L20 2BN",
    cost: "£4",
    address: "Goodison Road, Walton, Liverpool")
]

USERS = [
  (first_name: "Marco",
    last_name: "Verratti",
    email: "m.verratti@gmail.com",
    gender: "male"),
  (first_name: "Alex",
    last_name: "Morgan",
    email: "a.morgan@gmail.com",
    gender: "female")
]

MATCHES = [
  (skill_level: "beginner",
    no_of_players: "5",
    start_time: "2pm",
    match_description: "Venue for beginners players. Starting early afternoon.",
    gender: "male",
    end_time: "3pm"),
  (skill_level: "advanced",
    no_of_players: "7",
    start_time: "7pm",
    match_description: "Venue for advanced players. Starting after work.",
    gender: "female",
    end_time: "8pm")
]

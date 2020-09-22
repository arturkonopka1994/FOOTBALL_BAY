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

venue_one = Venue.create!(name: "Hire A Pitch",
    post_code: "NW1 8RU",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "Camden Rhino Turf, 21 Castlehaven Rd",
    surface: "Natural",
    floodlit: true,
    price: 5)
venue_one.photo.attach(io: File.open("app/assets/images/pitches/one.jpg"), filename: "one.jpg" )

venue_two = Venue.create!(name: "Power League",
    post_code: "SE1 7BE",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "1 Coral St, Bishops",
    surface: "Hybrid",
    floodlit: true,
    price: 5)
venue_two.photo.attach(io: File.open("app/assets/images/pitches/two.jpg"), filename: "two.jpg" )

venue_three = Venue.create!(name: "Bermondsy Pitch",
    post_code: "SW3 6NH",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "151 Sydney St, Chelsea",
    surface: "Artificial",
    floodlit: false,
    price: 5)
venue_three.photo.attach(io: File.open("app/assets/images/pitches/three.jpg"), filename: "three.jpg" )

venue_four = Venue.create!(name: "St Lukes",
    post_code: "N1 0WF",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "Copenhagen Primary School, Treaty St, Islington",
    surface: "Hybrid",
    floodlit: true,
    price: 5)
venue_four.photo.attach(io: File.open("app/assets/images/pitches/four.png"), filename: "four.png" )

venue_five = Venue.create!(name: "Go Mammoth",
    post_code: "E2 9DG",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "4-8 Vyner St",
    surface: "Natural",
    floodlit: false,
    price: 5)
venue_five.photo.attach(io: File.open("app/assets/images/pitches/five.png"), filename: "five.png" )

venue_six = Venue.create!(name: "Lofting 5 Aside",
    post_code: "N1 1HP",
    city: 'London',
    cost_per_hour: "£6",
    address_line_1: "Islington",
    surface: "Grass",
    floodlit: false,
    price: 6)
venue_six.photo.attach(io: File.open("app/assets/images/pitches/six.jpg"), filename: "six.jpg" )

venue_seven = Venue.create!(name: "Hireapitch UK",
    post_code: "SE1 7BE",
    city: 'London',
    cost_per_hour: "£7",
    address_line_1: "1 Coral St, Bishop's",
    surface: "Hybrid",
    floodlit: true,
    price: 7)
venue_seven.photo.attach(io: File.open("app/assets/images/pitches/seven.jpg"), filename: "seven.jpg" )

venue_eight = Venue.create!(name: "ULTIMATE5ASIDE",
    post_code: "E3 4AA",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "419 Burdett Rd",
    surface: "Synthetic",
    floodlit: true,
    price: 5)
venue_eight.photo.attach(io: File.open("app/assets/images/pitches/eight.jpg"), filename: "eight.jpg" )

venue_nine = Venue.create!(name: "Blue Hut",
    post_code: "E1 6GJ",
    city: 'London',
    cost_per_hour: "£6",
    address_line_1: "Station, Braithwaite Street Opposite Shoreditch High Street",
    surface: "2G artificial grass",
    floodlit: true,
    price: 6)
venue_nine.photo.attach(io: File.open("app/assets/images/pitches/nine.jpg"), filename: "nine.jpg" )

venue_ten = Venue.create!(name: "Clapham Sports",
    post_code: "SE11 6HU",
    city: 'London',
    cost_per_hour: "£7",
    address_line_1: "Black Prince Community Hub, 5 Beaufoy Walk, Prince's",
    surface: "3G artificial grass",
    floodlit: false,
    price: 7)
venue_ten.photo.attach(io: File.open("app/assets/images/pitches/ten.jpg"), filename: "ten.jpg" )

venue_eleven = Venue.create!(name: "Mile End",
    post_code: "N7 9PL",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "Market Rd",
    surface: "Synthetic",
    floodlit: true,
    price: 5)
venue_eleven.photo.attach(io: File.open("app/assets/images/pitches/eleven.jpg"), filename: "eleven.jpg" )

venue_twelve = Venue.create!(name: "Lukazade Pitch",
    post_code: "SW2 1BZ",
    city: 'London',
    cost_per_hour: "£6",
    address_line_1: "Eurolink Business Centre, 49 Effra Rd, Brixton",
    surface: "Grass",
    floodlit: false,
    price: 6)
venue_twelve.photo.attach(io: File.open("app/assets/images/pitches/twelve.jpg"), filename: "twelve.jpg" )

venue_thirteen = Venue.create!(name: "Holborn pitches",
    post_code: "WC2H 9JQ",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "71-75 Shelton St, Holborn",
    surface: "Grass",
    floodlit: false,
    price: 5)
venue_thirteen.photo.attach(io: File.open("app/assets/images/pitches/thirteen.jpg"), filename: "thirteen.jpg" )

venue_fourteen = Venue.create!(name: "Powerade Football",
    post_code: "W5 5JH",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "West Ealing",
    surface: "Grass",
    floodlit: true,
    price: 5)
venue_fourteen.photo.attach(io: File.open("app/assets/images/pitches/fourteen.JPG"), filename: "fourteen.JPG" )

venue_fifteen = Venue.create!(name: "5 Aside football",
    post_code: "SE5 0HF",
    city: 'London',
    cost_per_hour: "£5",
    address_line_1: "Bethwin Adventure Playground",
    surface: "Grass",
    floodlit: true,
    price: 5)
venue_fifteen.photo.attach(io: File.open("app/assets/images/pitches/fifteen.jpg"), filename: "fifteen.jpg" )

venue_sixteen = Venue.create!(name: "The Arc",
    post_code: "SW8 4JB",
    city: 'London',
    cost_per_hour: "£6",
    address_line_1: "Stewart's Rd",
    surface: "2G artificial grass",
    floodlit: true,
    price: 6)
venue_sixteen.photo.attach(io: File.open("app/assets/images/pitches/sixteen.jpg"), filename: "sixteen.jpg" )

venue_seventeen = Venue.create!(name: "Play Football",
    post_code: "W12 7RW",
    city: 'London',
    cost_per_hour: "£6",
    address_line_1: "41 S Africa Rd, Shepherd's Bush",
    surface: "Synthetic",
    floodlit: false,
    price: 6)
venue_seventeen.photo.attach(io: File.open("app/assets/images/pitches/seventeen.jpg"), filename: "seventeen.jpg" )

venue_eighteen = Venue.create!(name: "PowerLeague",
    post_code: "E14 9GL",
    city: 'London',
    cost_per_hour: "£6",
    address_line_1: "City Harbour NCP, Selsdon Way, Isle of Dogs",
    surface: "Hybrid",
    floodlit: true,
    price: 6)
venue_eighteen.photo.attach(io: File.open("app/assets/images/pitches/eighteen.jpg"), filename: "eighteen.jpg" )

puts "Venues created"

user_one = User.create!(email: "m.verratti@gmail.com",
  password: "aaaaaa")

user_two = User.create!(email: "a.morgan@gmail.com",
  password: "bbbbbb")

puts "Users created"

match_one = Match.create!(
    title: "Five a side game",
    mobile_number: "+447398786653",
    skill_level: "Just for fun",
    no_of_players: "10 Players",
    description: 'Its a non competative game. We are playing in either black or whites. Im bringing a ball with me so dont worry :)',
    start_time: "2pm",
    end_time: "3pm",
    venue_id: venue_one.id,
    user_id: user_one.id)

# match_two = Match.create!(
#     title: "A fun game",
#     mobile_number: "+447398786653",
#     skill_level: "Just for fun",
#     no_of_players: "14 Players",
#     description: 'Ive just moved to the area and want to make some friends. Please come along it will be fun!',
#     # start_time: "7pm",
#     # end_time: "8pm",
#     venue_id: venue_one.id,
#     user_id: user_one.id)

# match_three = Match.create!(
#     title: "Competative Game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_four = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)
    
# match_five = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_six = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_seven = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_eight = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_nine = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_ten = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_eleven = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_twelve = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_thirteen = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_fourteen = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_fifteen = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_sixteen = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_seventeen = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_eighteen = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_nineteen = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)

# match_twenty = Match.create!(
#     title: "Five a side game",
#     mobile_number: "+447398786653",
#     skill_level: "Try Hard",
#     no_of_players: "10 Players",
#     description: 'I want a good competative game of football. Please only join if you are experienced',
#     # start_time: "2pm",
#     # end_time: "3pm",
#     venue_id: venue_eight.id,
#     user_id: user_one.id)
        

puts "Matches created"

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
    address_line_1: "21 Castlehaven Rd",
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
    address_line_1: "Copenhagen Primary School",
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
    address_line_1: "Station, Braithwaite Street",
    surface: "2G artificial grass",
    floodlit: true,
    price: 6)
venue_nine.photo.attach(io: File.open("app/assets/images/pitches/nine.jpg"), filename: "nine.jpg" )

venue_ten = Venue.create!(name: "Clapham Sports",
    post_code: "SE11 6HU",
    city: 'London',
    cost_per_hour: "£7",
    address_line_1: "Black Prince Community Hub",
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
    address_line_1: "Eurolink Business Centre",
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
    address_line_1: "City Harbour NCP, Selsdon Way",
    surface: "Hybrid",
    floodlit: true,
    price: 6)
venue_eighteen.photo.attach(io: File.open("app/assets/images/pitches/eighteen.jpg"), filename: "eighteen.jpg" )

puts "Venues created"



user_one = User.create!(email: "j.terry@gmail.com",
  password: "123456")

user_two = User.create!(email: "p.cech@gmail.com",
  password: "123456")

user_three = User.create!(email: "d.drogba@gmail.com",
  password: "123456")

user_four = User.create!(email: "f.lampard@gmail.com",
  password: "123456")

user_five = User.create!(email: "ben.watson@gmail.com",
  password: "123456")

array = [user_one.id,user_two.id,user_three.id,user_four.id] 

puts "Users created"

match_one = Match.create!(
    title: "Five a side game",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "10 Players",
    description: 'Its a non competative game. We are playing in either black or whites. Im bringing a ball with me so dont worry :)',
    start_time: "Thu, 10 Sep 2020 18:00:00",
    end_time: "Thu, 10 Sep 2020 19:00:00",
    venue_id: venue_eighteen.id,
    user_id: user_one.id)

match_two = Match.create!(
    title: "A fun game",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "14 Players",
    description: 'Ive just moved to the area and want to make some friends. Please come along it will be fun!',
    start_time: "Tue, 1 Sep 2020 18:00:00",
    end_time: "Tue, 1 Sep 2020 19:00:00",
    venue_id: venue_eleven.id,
    user_id: user_two.id)

match_three = Match.create!(
    title: "Competitive Game",
    mobile_number: "+447531816616",
    skill_level: "Try Hard",
    no_of_players: "10 Players",
    description: 'I want a good competative game of football. Please only join if you are experienced',
    start_time: "Sat, 26 Sep 2020 19:00:00",
    end_time: "Sat, 26 Sep 2020 20:00:00",
    venue_id: venue_three.id,
    user_id: user_three.id)

match_four = Match.create!(
    title: "Sunday fun match",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "22 Players",
    description: 'The weather is meant to be good on sunday so Ive booked a pitch for 11 a side game. Anyone welcome!',
    start_time: "Sun, 27 Sep 2020 12:00:00",
    end_time: "Sun, 27 Sep 2020 13:00:00",
    venue_id: venue_nine.id,
    user_id: user_four.id)
    
match_five = Match.create!(
    title: "Want to make Frinds",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "10 Players",
    description: 'Im looking to make friends in the area, anyone can play',
    start_time: "Sat, 26 Sep 2020 20:00:00",
    end_time: "Sat, 26 Sep 2020 21:00:00",
    venue_id: venue_four.id,
    user_id: user_one.id)

match_six = Match.create!(
    title: "After work game",
    mobile_number: "+447531816616",
    skill_level: "Try Hard",
    no_of_players: "14 Players",
    description: 'Ive booked a pitch in shepherds bush. Hope you can make it',
    start_time: "Mon, 28 Sep 2020 19:00:00",
    end_time: "Mon, 28 Sep 2020 20:00:00",
    venue_id: venue_seventeen.id,
    user_id: user_two.id)

match_seven = Match.create!(
    title: "Local game",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "14 Players",
    description: 'Hoping to get to know more people in my area',
    start_time: "Mon, 28 Sep 2020 20:00:00",
    end_time: "Mon, 28 Sep 2020 21:00:00",
    venue_id: venue_five.id,
    user_id: user_three.id)

match_eight = Match.create!(
    title: "Pub league",
    mobile_number: "+447531816616",
    skill_level: "Try Hard",
    no_of_players: "10 Players",
    description: 'This is for Shipyard pub team.',
    start_time: "Sun, 27 Sep 2020 13:00:00",
    end_time: "Sun, 27 Sep 2020 14:00:00",
    venue_id: venue_eighteen.id,
    user_id: user_four.id)

match_nine = Match.create!(
    title: "Kids match",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "22 Players",
    description: 'Local game for kids to come and enjoy their sunday morning',
    start_time: "Sun, 27 Sep 2020 13:00:00",
    end_time: "Sun, 27 Sep 2020 14:00:00",
    venue_id: venue_twelve.id,
    user_id: user_one.id)

match_ten = Match.create!(
    title: "Intense game",
    mobile_number: "+447531816616",
    skill_level: "Try Hard",
    no_of_players: "10 Players",
    description: 'ONLY FOR THOSE PLAYERS WHO ARE FULLY COMMITTED TO TACKLES',
    start_time: "Sat, 26 Sep 2020 20:30:00",
    end_time: "Sat, 26 Sep 2020 21:30:00",
    venue_id: venue_seven.id,
    user_id: user_two.id)

match_eleven = Match.create!(
    title: "Friendly game",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "14 Players",
    description: 'Please bring either a blue or red shirt!',
    start_time: "Sat, 26 Sep 2020 19:30:00",
    end_time: "Sat, 26 Sep 2020 20:30:00",
    venue_id: venue_eleven.id,
    user_id: user_three.id)

match_twelve = Match.create!(
    title: "Legends of the ball",
    mobile_number: "+447531816616",
    skill_level: "Try Hard",
    no_of_players: "10 Players",
    description: 'I want a good competative game of football. Please only join if you are experienced',
    start_time: "Sun, 27 Sep 2020 13:00:00",
    end_time: "Sun, 27 Sep 2020 13:00:00",
    venue_id: venue_sixteen.id,
    user_id: user_four.id)

match_thirteen = Match.create!(
    title: "4 4 2",
    mobile_number: "+447531816616",
    skill_level: "Try Hard",
    no_of_players: "22 Players",
    description: 'Local game come and enjoy sunday morning',
    start_time: "Sun, 27 Sep 2020 09:00:00",
    end_time: "Sun, 27 Sep 2020 10:00:00",
    venue_id: venue_fourteen.id,
    user_id: user_one.id)

match_fourteen = Match.create!(
    title: "Mixed game",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "14 Players",
    description: 'Im looking for a good game of football, male and female welcome',
    start_time: "Sun, 27 Sep 2020 11:30:00",
    end_time: "Sun, 27 Sep 2020 12:30:00",
    venue_id: venue_thirteen.id,
    user_id: user_two.id)

match_fifteen = Match.create!(
    title: "Five a side",
    mobile_number: "+447531816616",
    skill_level: "Try Hard",
    no_of_players: "10 Players",
    description: 'I want a good competative game of football. Please only join if you are experienced',
    start_time: "Tue, 29 Sep 2020 20:00:00",
    end_time: "Tue, 29 Sep 2020 21:00:00",
    venue_id: venue_six.id,
    user_id: user_three.id)

match_sixteen = Match.create!(
    title: "Anyone welcome",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "14 Players",
    description: 'Looking for an enjoyable game. Anyone welcome!',
    start_time: "Tue, 29 Sep 2020 19:00:00",
    end_time: "Tue, 29 Sep 2020 20:00:00",
    venue_id: venue_eight.id,
    user_id: user_four.id)

match_seventeen = Match.create!(
    title: "Over 50's",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "10 Players",
    description: 'Hoping to get some exercise and stretch my legs in my old age.',
    start_time: "Wed, 30 Sep 2020 19:30:00",
    end_time: "Wed, 30 Sep 2020 20:30:00",
    venue_id: venue_ten.id,
    user_id: user_one.id)

match_eighteen = Match.create!(
    title: "Girls 5 a side",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "10 Players",
    description: 'Girls only. Any skill ranges welcome',
    start_time: "Wed, 30 Sep 2020 19:30:00",
    end_time: "Wed, 30 Sep 2020 20:30:00",
    venue_id: venue_one.id,
    user_id: user_two.id)

match_nineteen = Match.create!(
    title: "Lunch Time game",
    mobile_number: "+447531816616",
    skill_level: "Try Hard",
    no_of_players: "10 Players",
    description: 'I want a good competative game of football. Please only join if you are experienced',
    start_time: "Wed, 30 Sep 2020 12:30:00",
    end_time: "Wed, 30 Sep 2020 13:30:00",
    venue_id: venue_two.id,
    user_id: user_three.id)

match_twenty = Match.create!(
    title: "No competative",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "14 Players",
    description: 'I want a good none competative game of football. Please only join if you are want fun',
    start_time: "Wed, 30 Sep 2020 13:30:00",
    end_time: "Wed, 30 Sep 2020 13:30:00",
    venue_id: venue_nine.id,
    user_id: user_four.id)

match_twentyone = Match.create!(
    title: "Five a side game",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "10 Players",
    description: 'Its a non competative game. We are playing in either black or whites. Im bringing a ball with me so dont worry :)',
    start_time: "Wed, 30 Sep 2020 18:00:00",
    end_time: "Wed, 30 Sep 2020 19:00:00",
    venue_id: venue_one.id,
    user_id: user_one.id)

match_twentytwo = Match.create!(
    title: "A fun game",
    mobile_number: "+447531816616",
    skill_level: "Just for fun",
    no_of_players: "14 Players",
    description: 'Ive just moved to the area and want to make some friends. Please come along it will be fun!',
    start_time: "Wed, 30 Sep 2020 18:00:00",
    end_time: "Wed, 30 Sep 2020 19:00:00",
    venue_id: venue_two.id,
    user_id: user_two.id)

puts "Matches created"

booking_one = Booking.create!(
    user_id: user_five.id,
    match_id: match_one.id
)

booking_two = Booking.create!(
    user_id: user_five.id,
    match_id: match_two.id
)

puts "created previous booking for ben"

Match.all.each do |match|
   rand(3..9).times do 
    Booking.create!(
        user_id: array.sample,
        match: match
    )
   end
end

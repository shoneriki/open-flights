# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
puts "creating airlines"
airlines = Airline.create([
  {
    name: "United Airlines",
    image_url: "https://open-flights.s3.amazonaws.com/United-Airlines.png"
  },
  {
    name: "Southwest",
    image_url: "https://open-flights.s3.amazonaws.com/Southwest-Airlines.png"
  },
  {
    name: "Delta",
    image_url: "https://open-flights.s3.amazonaws.com/Delta.png"
  },
  {
    name: "Alaska Airlines",
    image_url: "https://open.flights.s3.amazonaws.com/Alaska-Airlines.png"
  },
    {
    name: "JetBlue",
    image_url: "https://open.flights.s3.amazonaws.com/JetBlue.png"
  },
    {
    name: "American Airlines",
    image_url: "https://open.flights.s3.amazonaws.com/American-Airlines.png"
  },
])
puts "done with airlines"

puts "creating reviews"
reviews = Review.create([
  {
    title: "Great airline",
    description: "Very smooth ride",
    score: 5,
    airline: airlines.first
  },
  {
    title: "Bad airline",
    description: "the worst trip I ever had",
    score: 1,
    airline: airlines.first
  },
])
puts "done creating reviews"

puts "created #{airlines.count} airlines and #{reviews.count} reviews"

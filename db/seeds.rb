# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

puts "destroying all airlines"
Airline.destroy_all
puts"done"

puts "destroying all reviews"
Review.destroy_all
puts "done"

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
    image_url: "https://ms-f7-sites-01-cdn.azureedge.net/docs/stories/alaska-airlines-travel-transportation-azure/resources/0a493fd2-7893-45c6-bcf0-b67b82548c1b/1105251738593703719_1105251738593703719"
  },
    {
    name: "JetBlue",
    image_url: "https://www.pngkey.com/png/detail/22-226891_you-above-all-jetblue-airlines-logo-png.png"
  },
    {
    name: "American Airlines",
    image_url: "https://cdn.travelpulse.com/images/a49f93d8-c625-e111-b505-001a4bd1ca5c/138df7a7-0eca-d225-7869-85d5dcb4f549/500x309.png"
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

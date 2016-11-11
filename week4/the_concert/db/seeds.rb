# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Concert.create!(artist: "The Pretty Reckless", venue: "TBD", city: "Miami", date: Time.now + 1.week,price: 20.00, description: "Rock on")
c2 = Concert.create!(artist: "Gin Wigmore", venue: "TBD", city: "Boston", date: Time.now + 2.weeks, price: 24.00, description: "I am great at making descriptions")
c3 = Concert.create!(artist: "Bond", venue: "TDB", city: "Cambridge", date: Time.now, price: 15.00, description: "Strings are awesome")

c2.comments.create!(author: "Jon Jones", comment: "Best concert ever")
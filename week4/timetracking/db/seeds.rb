# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
projectA = Project.create!(name: "Ironhack")
projectB = Project.create!(name: "Train Chasers", description: "Chasing trains")
projectC = Project.create!(name: "Popcorn Shrimp", description: "Delicious")
projectD = Project.create!(name: "Beach Cleanup", description: "Make it nice")
projectE = Project.create!(name: "Bird Banding", description: "So many fluffballs!")
projectF = Project.create!(name: "Electrofishing", description: "Electricity pack and water, what could go wrong")
projectG = Project.create!(name: "Stocking Mountain Lakes", description: "Eject fish from from helicopter flyover")
projectH = Project.create!(name: "Grubbing Burrows", description: "Scramble out on cliffs and reach blindly into holes in the rock you know contain wild animals")
projectI = Project.create!(name: "Original Project Name", description: "Super origional")
projectJ = Project.create!(name: "10th Project", description:"Now this is just ridiculous")
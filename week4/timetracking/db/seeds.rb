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

TimeEntry.create!(hours: 2, minutes: 40, comments: "Not OSHA approved", date: Date.yesterday, project_id: projectH.id)
TimeEntry.create!(hours: 2, minutes: 40, comments: "Not OSHA approved", date: Date.yesterday, project: projectF)
projectA.time_entries.create!(hours: 10, minutes:30, comments: "Type all the code", date: Date.today)
projectG.time_entries.create!(hours:5, minutes:50, comments: "Don't miss!", date: Date.today - 2.days)
projectB.time_entries.create!(hours:0, minutes:15, comments: "Got to catch the train!", date: Date.today)


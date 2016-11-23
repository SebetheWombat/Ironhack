# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tournA = Tournament.create!(name: "Marshmellows")
tournB = Tournament.create!(name: "Pickle Ball")
tournC = Tournament.create!(name: "Rollerderby")

playerA = Player.create!(name: "Alice")
playerB = Player.create!(name: "Bob")
playerC = Player.create!(name: "Whit")
playerD = Player.create!(name: "Mary")
playerE = Player.create!(name: "Nick")

tournA.players.push(playerA)
tournA.players.push(playerB)

tournB.players.push(playerE)
tournB.players.push(playerB)
tournB.players.push(playerA)

tournC.players.push(playerD)
tournC.players.push(playerC)
tournC.players.push(playerA)


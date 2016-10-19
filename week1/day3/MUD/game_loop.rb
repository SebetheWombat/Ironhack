require_relative("lib/room.rb")
require_relative("lib/game.rb")

actions = ["sing","pick up","attack","look for food","eat"]
directions = ["n","e","s","w"]

alive = true
game = Game.new
game.add_room(0,2,Room.new("forest","It is dark",["s"],{"sing" => "Your singing is beautiful...","look for food" => "There are mushrooms but I wouldn't risk it...","eat" => "I warned you. Now you are dead...."},[]))
game.add_room(1,2,Room.new("dark room","It smells like cranberries",["n","s"],{"sing" => "shhhh! You hear a noise..."},[]))
game.add_room(2,2,Room.new("open field","The grass is overgrown",["n","e","w"],{"pick up" => "You pick a flower"},["flower"]))
game.add_room(2,3,Room.new("swamp","There are mosquitos",["w"],{},[]))
game.add_room(2,1,Room.new("abandoned lot","The weeds are thick and tangle. Strewn throughout the lot are crumbled bricks as though there used to be a building of some sort.", ["e"],{},[]))

while alive
	game.set_pos()
	puts "You are in a #{game.position.name}"
	puts game.position.description
	puts "> "
	user_action = gets.chomp
	until game.position.exits.include?(user_action) || game.position.actions.has_key?(user_action) || user_action == "quit" || user_action == "inventory"
		if directions.include?(user_action)
			puts "There is no exit that way"
			puts "You are in a #{game.position.name}"
			puts game.position.description
			puts "> "
			user_action = gets.chomp
		elsif actions.include?(user_action)
			puts "You can't do that here!"
			user_action = gets.chomp
		else
			puts "I don't understand...."
			user_action = gets.chomp
		end
	end
	if user_action == "quit"
		break
	elsif directions.include?(user_action)
		game.move(user_action)
	elsif user_action == "inventory"
		game.check_inventory
	else
		str = game.position.actions[user_action]
		puts str
		if user_action == "pick up"
			game.pick_up(game.position.items[0])
		end
		if str.include? "dead"
			break
		end
	end
end


require 'colorize'

class Blog
	def initialize
		@posts = []
	end

	def add_post(post)
		@posts << post
	end

	def pub_front_pg
		#Sorting by most recent first
		@posts.sort! {|a,b| b.date <=> a.date}
		#Setting up some sexy variables
		user_input = "next"
		len = @posts.length
		pagenum = (len / 3.0).ceil
		cur_page = nil
		count = 0
		tester = nil #ultra-large number that i is unlikely to be
		i = 0
		#Do the thing
		while true
			#Figure out what page we're on for highlighting purposes
			if tester == nil
				cur_page = (i / 3.0).ceil
			elsif tester == len && len % 3 == 1
				cur_page = ((i+1)/3.0).ceil
			end
			
			post = @posts[i]
			puts ""
			
			#Write out page numbers after printing 3 posts and wait for input
			if count == 3 || i >= len - 1
				num = 1
				while num <= pagenum
					if num == cur_page 
						print "#{num.to_s.red} "
					else
						print "#{num} "
					end
					num += 1
				end
				puts "\n< prev next >"

				user_input = gets.chomp
				until user_input == "next" || user_input == "prev" || user_input == "quit"
					puts "Please only enter next, prev, or quit"
					user_input = gets.chomp
				end
				count = 0
			end

			#print out posts
			if user_input == "next"
				puts post.title
				puts "*****************"
				puts post.text
				puts "-----------------"
				count += 1	
			end
			
			#Sets index back to beginning of previous page and uses next to load posts
			if user_input == "prev"
				if i <= 3
					puts "You're on the first page!"
					i = -1
				else
					i = ((cur_page - 1) * 3)-4
				end
				user_input = "next"
			end
			
			#Increment that index!
			i += 1

			#Stop doing the thing
			if user_input == "quit"
				break
			end

			#If we have run out of posts, inform the user and reset the index to beginning of current page
			if i == len
				puts "\nThat's it, no more posts!"
				user_input = "next"
				tester = i
				i -= i % 3
			else
				tester = nil
			end
			
		end
	end
end
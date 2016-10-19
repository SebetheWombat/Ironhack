require_relative("lib/blog.rb")
require_relative("lib/post.rb")
sec = 60*60*24
blog = Blog.new
blog.add_post(Post.new("Rabid Vampire Kittens in Norfolk!", Time.now, "Title says it all really"))
blog.add_post(SponseredPost.new("Chicken Crosses Street", Time.now, "It is still uncertain at this time why the chicken crossed said road."))
blog.add_post(Post.new("Fire in Downtown Trashbin", Time.now, "Local residents have responded to the disturbance with an abundance of marshmellows"))
blog.add_post(Post.new("Rain in Seattle", Time.now, "Residents remain calm"))
blog.add_post(SponseredPost.new("People Like Shiny Things", Time.now,"In a groundbreaking discovery renowned scientists have discovered that people of all ethnicities, backgrounds, professions, and favorite colors all are attracted to things that are shiny. What could this possible mean?"))
blog.add_post(Post.new("Study Finds Testing Causes Cancer in Rats", Time.now, "Researches discovered that the process of testing increases the likelihood that rats will get cancer. At this time we can only theorize that testing causes cancer."))
blog.add_post(Post.new("Tree Makes Sound in Forest", Time.now, "The question has finally been answered thanks to a man named Bill who was sick of hearing the question. According to Bill \"@#^$& er course if makes sound yer dumb%$#!\" Thanks Bill!"))
blog.add_post(Post.new("title",Time.now,"story"))
blog.add_post(Post.new("title",Time.new(1890,06,19),"cool story bro!"))
blog.add_post(Post.new("yolo",Time.now - 4 ,"word"))

blog.pub_front_pg
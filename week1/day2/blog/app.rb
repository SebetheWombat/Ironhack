require_relative("lib/blog.rb")
require_relative("lib/post.rb")

blog = Blog.new
blog.add_post(Post.new("Rabid Vampire Kittens in Norfolk!", "2016/05/10", "Title says it all really"))
blog.add_post(SponseredPost.new("Chicken Crosses Street", "1990/01/20", "It is still uncertain at this time why the chicken crossed said road."))
blog.add_post(Post.new("Fire in Downtown Trashbin", "1989/07/13", "Local residents have responded to the disturbance with an abundance of marshmellows"))
blog.add_post(Post.new("Rain in Seattle", "2016/10/18", "Residents remain calm"))
blog.add_post(SponseredPost.new("People Like Shiny Things", "2014/09/09","In a groundbreaking discovery renowned scientists have discovered that people of all ethnicities, backgrounds, professions, and favorite colors all are attracted to things that are shiny. What could this possible mean?"))
blog.add_post(Post.new("Study Finds Testing Causes Cancer in Rats", "2016/12/18", "Researches discovered that the process of testing increases the likelihood that rats will get cancer. At this time we can only theorize that testing causes cancer."))
blog.add_post(Post.new("Tree Makes Sound in Forest", "2024/10/20", "The question has finally been answered thanks to a man named Bill who was sick of hearing the question. According to Bill \"@#^$& er course if makes sound yer dumb%$#!\" Thanks Bill!"))
blog.add_post(Post.new("title","2000","story"))
blog.add_post(Post.new("title","1","cool story bro!"))
blog.add_post(Post.new("yolo","2","word"))

blog.pub_front_pg
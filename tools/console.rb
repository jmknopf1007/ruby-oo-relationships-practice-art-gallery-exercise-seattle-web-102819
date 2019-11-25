require_relative '../config/environment.rb'


#title, price, artist, gallery


a1 = Artist.new("Jacob", 10)
a2 = Artist.new("Michael", 15)
a3 = Artist.new("Leviathon", 47)
a4 = Artist.new("Castiel", 1) 

g1 = Gallery.new("Red Brick Studios", "Astoria")
g2 = Gallery.new("Say What", "London")
g3 = Gallery.new("Peace and Love", "Minneapolis")

p1 = Painting.new("Sunshine", 850, a1, g1) 
p2 = Painting.new("Fireworks", 50, a2, g3) 
p3 = Painting.new("Baseball", 450, a3, g3) 
p4 = Painting.new("God", 2000, a4, g1) 


binding.pry

puts "Bob Ross rules."








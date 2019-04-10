require_relative '../config/environment.rb'

a1 = Artist.new("John", 15)
a2 = Artist.new("Jose", 6)
a3 = Artist.new("Jesus", 70)


g1 = Gallery.new("Modern", "Brooklyn")
g2 = Gallery.new("Present", "Dumbo")
g3 = Gallery.new("Future", "Manhattan")


p1 = Painting.new("random", "$999", a1, g1)
p2 = Painting.new("anything", "$777", a2, g2)
p3 = Painting.new("where", "$650", a3, g1)

binding.pry

puts "Bob Ross rules."

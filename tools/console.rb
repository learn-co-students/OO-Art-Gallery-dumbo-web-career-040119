require_relative '../config/environment.rb'

zona = Artist.new("Zona", 5)
elu = Artist.new("Elu", 50)
kio = Artist.new("Kio", 75)

gallery_kuk = Gallery.new("Kuk", "London")
gallery2 = Gallery.new("Dwa", "London")
gallery3 = Gallery.new("Trzy", "Berlin")
gallery4 = Gallery.new("Cztery", "Prague")

obraz1 = Painting.new("Malowanko", 300, gallery2, zona)
obraz2 = Painting.new("Marbles", 600, gallery2, elu)
obraz3 = Painting.new("Houses", 900, gallery3, kio)
obraz4 = Painting.new("Tables", 900, gallery_kuk, kio)
obraz5 = Painting.new("Glass", 900, gallery4, zona)
obraz6 = Painting.new("Paper", 500, gallery4, zona)

binding.pry

puts "Bob Ross rules."

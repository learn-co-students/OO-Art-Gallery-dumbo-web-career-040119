require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

mallory = Artist.new("Mallory", 10)
sylwia = Artist.new("Sylwia", 15)
dominic = Artist.new("Dominic", 3)

moma = Gallery.new("MoMA", "NYC")
louvre = Gallery.new("Louvre", "Paris")

painting_1 = Painting.new("first_painting", 300, moma, mallory)
painting_2 = Painting.new("second_painting", 500, louvre, sylwia)
painting_3 = Painting.new("third_painting", 200, louvre, dominic)
painting_4 = Painting.new("fourth_painting", 1200, louvre, mallory)
painting_5 = Painting.new("fifth_painting", 1000, moma, sylwia)



Painting.all
Painting.total_price

Gallery.all

moma.paintings
louvre.artists

louvre.artist_names
louvre.most_expensive_painting

mallory.paintings
mallory.galleries

sylwia.cities
Artist.total_experience
Artist.most_prolific

mallory.create_painting("sixth painting", 750, moma)
binding.pry

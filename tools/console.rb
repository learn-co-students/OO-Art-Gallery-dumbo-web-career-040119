require_relative '../config/environment.rb'

artist1 = Artist.new("Artist1", 1)
artist2 = Artist.new("Artist2", 2)
artist3 = Artist.new("Artist3", 3)

gallery1 = Gallery.new("Gallery1", "City1")
gallery2 = Gallery.new("Gallery2", "City2")

painting1 = Painting.new("Painting1", 1, artist1, gallery1)
painting2 = Painting.new("Painting2", 2, artist2, gallery2)
painting3 = Painting.new("Painting3", 3, artist3, gallery1)
painting4 = Painting.new("Painting4", 4, artist1, gallery2)
painting5 = Painting.new("Painting5", 5, artist2, gallery1)
painting6 = Painting.new("Painting6", 6, artist3, gallery2)




binding.pry

puts "Bob Ross rules."

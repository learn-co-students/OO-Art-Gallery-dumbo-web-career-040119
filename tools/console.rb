require_relative '../config/environment.rb'

# Create some new artists
# initialize(name, years_experience)
davinci = Artist.new("Leo", 40)
michaelangelo = Artist.new("Micky", 25)
chris = Artist.new("Chris", 3)
dave = Artist.new("Dave", 7)

# Create some galleries
# initialize(name, city)
new_york = Gallery.new("New York Metro", "New York")
la = Gallery.new("Los Angeles Museum", "Los Angeles")

# LASTLY Create some paintings. Do this last because we will need to input a
# value for artist and gallery in painting.
# initialize(title, price, gallery, artist)
painting1 = Painting.new("The Best Painting Ever", 10_000, new_york, chris)
painting2 = Painting.new("Mona Lisa", 300_000, new_york, davinci)
painting3 = Painting.new("Angels Touching Hands", 1_000_000, la, michaelangelo)
painting4 = Painting.new("Scream", 450_000, la, dave)

binding.pry
# Now test all the methods you can call on each class!
# Plug in the following methods in binding.pry to test!
#################################################################
# Artist Methods

p Artist.all

p davinci.paintings

p michaelangelo.galleries

p dave.cities

p Artist.total_experience

p Artist.most_prolific

p chris.create_painting("Test Title", 10, new_york)

#################################################################
# Painting Methods

p Painting.all

p Painting.total_price

#################################################################
# Gallery Methods

p Gallery.all

p new_york.paintings

p la.artists

p la.artist_names

p new_york.most_expensive_painting

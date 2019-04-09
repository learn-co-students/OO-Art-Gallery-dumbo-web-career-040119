require_relative '../config/environment.rb'

picasso = Artist.new("Picasso", 32)
van_goph = Artist.new("Van Goph", 25)
michelangelo = Artist.new("Michelangelo", 35)

met = Gallery.new("The Metropolitan", "New York")
nat = Gallery.new("The National Gallery", "London")

hef = Painting.new("Homme et femme", 1500, picasso, met)
nals = Painting.new("Nu à la serviette (Étude)", 1200, picasso, met)
nw = Painting.new("Nude Woman (oil on canvas)", 2350, picasso, nat)
sn = Painting.new("Starry Night Over the Rhone", 2830, van_goph, nat)
mar = Painting.new("Portrait of Madame Augustine Roulin", 1990, van_goph, nat)
sm = Painting.new("St. Matthew", 2460, michelangelo, met)
sc = Painting.new("Sistine Chapel", 2600, michelangelo, met)
tlj = Painting.new("The Last Judgment", 2200, michelangelo, nat)

binding.pry

puts "Bob Ross rules."

require_relative '../config/environment.rb'

wheeler = Artist.new("Jim Wheeler", 20)
sarin = Artist.new("Jessica Sarin", 3)
horn = Artist.new("Jerry Horn", 8)
quimby = Artist.new("Ramona Quimby", 7)

skylight = Gallery.new("Skylight Gallery", "Houston")
prestige = Gallery.new("Prestige Gallery", "Atlanta")
the_stars = Gallery.new("L'etoiles", "Rounen")

quimby.create_painting("The Pest", 8000, skylight)
quimby.create_painting("Beezus", 9500, prestige)
sarin.create_painting("Solstice of Fear", 7400, skylight)
horn.create_painting("Blank", 1200, the_stars)
horn.create_painting("Bold", 1500, the_stars)
horn.create_painting("Body", 4000, prestige)
wheeler.create_painting("Whispering Shadows", 600, prestige)
wheeler.create_painting("Jumping Quotient", 2500, the_stars)
wheeler.create_painting("Untitled", 9999, skylight)
wheeler.create_painting("Dusk's Requiem", 3000, skylight)

binding.pry

puts "Bob Ross rules."

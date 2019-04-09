require_relative '../config/environment.rb'

jc = Gallery.new('JC','Jersey City')
ny = Gallery.new('NY','New York')
coolGang = Gallery.new('CG','Brooklyn')
museum = Gallery.new('M','Philadelphia')

rei = Artist.new('Rei',10)
michelle = Artist.new('Michelle',12)
kring = Artist.new('Kring',8)
juan = Artist.new('Juan',14)


painting1 = Painting.new('Water',200,jc,rei)
painting2 = Painting.new('Life',300,jc, rei)
painting3 = Painting.new('Beats',120,jc,michelle)
painting4 = Painting.new('Gyms',130,ny,juan)
painting5 = Painting.new('Fats',200,ny,juan)
painting6 = Painting.new('MacBook', 1000, ny, kring)
painting7 = Painting.new('Honda', 6000, jc, kring)

rei.paintings
kring.galleries
juan.cities
michelle.create_painting('Ghetto',200, ny)
jc.paintings

Artist.total_experience

jc.most_expensive_painting

Artist.most_prolific

binding.pry

puts "Bob Ross rules."

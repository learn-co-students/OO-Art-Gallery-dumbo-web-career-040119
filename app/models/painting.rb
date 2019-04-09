class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    prices = @@all.map(&:price)
    prices.inject(0){|sum,x| sum + x }
  end

end


# PAINTING
    # Painting.all
    # Returns an array of all the paintings

    # Painting.total_price
    # Returns an integer that is the total price of all paintings

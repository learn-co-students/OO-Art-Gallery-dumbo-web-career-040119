class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end
#Returns an `array` of all the paintings
  def self.all
    @@all
  end
#Returns an `integer` that is the total price of all paintings
  def self.total_price
    self.all.reduce(0) do |sum, painting|
      sum + painting.price
    end
  end

end

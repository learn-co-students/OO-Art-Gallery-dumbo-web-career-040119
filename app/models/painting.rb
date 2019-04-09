require 'pry'

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

#DONE * `Painting.all`
#* Returns an `array` of all the paintings
  def self.all
    @@all
  end

#DONE * `Painting.total_price`
#   * Returns an `integer` that is the total price of all paintings
  def self.total_price
    total = self.all.map(&:price).inject(0, &:+)
  end

end

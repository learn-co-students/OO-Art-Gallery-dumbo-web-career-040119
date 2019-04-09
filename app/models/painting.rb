class Painting

  attr_reader :title, :price, :gallery, :owner

  @@all = []
  @@total_price = 0

  def initialize(title, price,gallery,owner)
    @title = title
    @price = price
    @gallery = gallery
    @owner = owner
    @@all << self
  end

  def self.total_price
    @@total_price 
  end

  def self.all
    @@all
  end

end

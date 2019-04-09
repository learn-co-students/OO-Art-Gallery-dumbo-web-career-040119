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
    self.all.map do |painting|
      @@total_price += painting.price 
    end
    @@total_price 
    #binding.pry
  end

  def self.all
    @@all
  end

end

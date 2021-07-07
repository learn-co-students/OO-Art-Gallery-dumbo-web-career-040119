class Painting

  attr_reader :title, :price, :gallery
  attr_accessor :artist

  @@all = []

  def initialize(title, price, gallery)
    @title = title
    @price = price
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    @@all.map{|painting|painting.price}.sum
  end

end

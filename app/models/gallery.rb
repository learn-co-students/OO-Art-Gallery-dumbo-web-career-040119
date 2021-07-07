class Gallery

  attr_reader :name, :city, :artist, :painting
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    self.paintings.map{|painting| painting.artist}
  end

  def artist_names
    self.paintings.map{|painting| painting.artist.name}
  end

  def most_expensive_painting
    dummy = self.paintings.map{|painting| painting.price}
    highest_price = dummy.sort.last
    self.paintings.select{|painting| painting.price == highest_price}
  end

  end

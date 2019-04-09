class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select {|work| work.gallery == self}
  end

  def self.all
    @@all
  end

  def artists
    self.paintings.map(&:artist).uniq
  end

  def artist_names
    self.artists.map(&:name)
  end

  def most_expensive_painting
    self.paintings.max_by {|work| work.price}
  end

end

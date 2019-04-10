class Gallery

  attr_reader :name, :city
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
    # Painting.all.map(&:gallery).select {|gallery| gallery == self}
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    # Painting.all.map(&:artist)
    # Painting.all.select{|paint| paint.gallery == self}.map(&:artist)
    self.paintings.map(&:artist)
  end

  def artist_names
    self.artists.map(&:name)
  end

  def most_expensive_painting
    self.paintings.max_by { |paint| paint.price }
  end

end

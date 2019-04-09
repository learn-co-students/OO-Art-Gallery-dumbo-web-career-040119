class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
#DONE * `Gallery.all` * Returns an `array` of all the galleries
  def self.all
    @@all
  end

#DONE * `Gallery#paintings` * Returns an `array` of all paintings in a gallery
  def paintings
    Painting.all.select { |painting| painting.gallery == self}
  end

#DONE * `Gallery#artists` * Returns an `array` of all artists that have a painting in a gallery
  def artists
      self.paintings.map(&:artist)
  end

#DONE * `Gallery#artist_names` * Returns an `array` of the names of all artists that have a painting in a gallery
  def artist_names
    self.artists.map(&:name)
  end


#DONE * `Gallery#most_expensive_painting` * Returns an `instance` of the most expensive painting in a gallery
  def most_expensive_painting
    self.paintings.max_by(&:price)
  end

end

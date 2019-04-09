class Gallery

  attr_reader :name, :city, :gallery, :artist

@@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  # def paintings
  #   all_paintings_in_the_world = Painting.all.map(&:title)
  #   gallery_paintings = all_paintings_in_the_world.select {|}
  # end

  def paintings
    all_paintings = Painting.all.select{|painting| painting.gallery == self}
  end

  def artists
    all_artists = self.paintings.map(&:artist)
    all_artists.uniq
  end

  def artist_names
    artist_names = self.artists.map(&:name)
  end

  def most_expensive_painting
    paintings.max_by do |painting|
      painting.price
    end
  end

end


# GALLERY

  # Gallery.all
  # Returns an array of all the galleries

  # Gallery#paintings
  # Returns an array of all paintings in a gallery

  # Gallery#artists
  # Returns an array of all artists that have a painting in a gallery

  # Gallery#artist_names
  # Returns an array of the names of all artists that have a painting in a gallery

  # Gallery#most_expensive_painting
  # Returns an instance of the most expensive painting in a gallery

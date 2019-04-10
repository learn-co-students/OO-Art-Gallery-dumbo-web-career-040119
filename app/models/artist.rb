require 'pry'

class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

#Returns an `array` of all the artists
  def self.all
    @@all
  end

#Returns an `array` all the paintings by an artist
  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end
#Returns an `array` of all the galleries that an artist has paintings in
  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end
  #Return an `array` of all cities that an artist has paintings in
  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end
  #Returns an `integer` that is the total years of experience of all artists
  def self.total_experience
    self.all.reduce(0) do |sum, artist|
      sum + artist.years_experience
    end
  end
#Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end

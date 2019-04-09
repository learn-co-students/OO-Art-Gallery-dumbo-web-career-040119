class Artist

  attr_reader :name, :years_experience, :painting
  attr_accessor :title, :price, :gallery

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

  def paintings
    all_paintings = Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    all_galleries = self.paintings.map(&:gallery)
    all_galleries.uniq
  end

  def cities
    all_cities = self.galleries.map(&:city)
    all_cities.uniq
  end

  def self.total_experience
    exp = @@all.map(&:years_experience)
    exp.inject(0){|sum,x| sum + x }
  end

  def self.most_prolific
    @@all.max_by{|k,v| v}
  end

end


# ARTIST

  # Artist.total_experience
  # Returns an integer that is the total years of experience of all artists

# Artist.most_prolific
# Returns an instance of the artist with the highest amount of paintings per year of experience.

  # Artist#create_painting
  # Given the arguments of title, price and gallery, creates a new painting belonging to that artist

  # Artist.all
  # Returns an array of all the artists

  # Artist#paintings
  # Returns an array all the paintings by an artist


  # Artist#galleries
  # Returns an array of all the galleries that an artist has paintings in

  # Artist#cities
  # Return an array of all cities that an artist has paintings in

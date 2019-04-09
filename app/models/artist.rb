class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

#DONE `Artist.all`
#   * Returns an `array` of all the artists
  def self.all
    @@all
  end

#DONE * `Artist#paintings`
#   * Returns an `array` all the paintings by an artist
  def paintings
      Painting.all.select do |painting|
        painting.artist == self
      end
  end

#DONE * `Artist#galleries`
#   * Returns an `array` of all the galleries that an artist has paintings in
  def galleries
    self.paintings.map(&:gallery)
  end


#DONE * `Artist#cities`
#   * Return an `array` of all cities that an artist has paintings in
  def cities
    self.galleries.map(&:city)
  end

#DONE * `Artist.total_experience`
#   * Returns an `integer` that is the total years of experience of all artists
  def self.total_experience
    @@all.map(&:years_experience).inject(0, &:+)
  end

#DONE * `Artist.most_prolific`
#   * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

  def self.most_prolific
    self.all.max_by do |artist|
      artist.paintings.length / artist.years_experience
    end
  end

#DONE`Artist#create_painting`
#   * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end

class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def paintings
    Painting.all.select {|work| work.artist == self}
  end

  def self.all
    @@all
  end

  def self.total_experience
    self.all.map(&:years_experience).sum
  end

  def self.most_prolific
    @@all.max_by {|artist| artist.paintings.length.to_f/artist.years_experience}
  end

  def galleries
    self.paintings.map(&:gallery).uniq
  end

  def cities
    self.galleries.map(&:city)
  end

end

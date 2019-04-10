class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map(&:gallery)
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.galleries.map(&:city)
  end

  def self.total_experience
    self.all.map(&:years_experience).reduce{|sum,e|sum+=e}
  end

  def self.most_prolific
    self.all.max_by do |artist|
      (artist.paintings.length / artist.years_experience)
    end
  end

  def create_painting(title, price, gallery)
    new_paint = Painting.new(title, price, self, gallery)
  end


end

class Artist

  attr_reader :name, :years_experience
  attr_accessor :painting, :gallery
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
    Painting.all.select{|painting|painting.artist == self}
  end

  def paintings_count
    self.paintings.size
  end

  def profile
    self.paintings_count.to_f/self.years_experience.to_f
  end

  def galleries
    self.paintings.map{|painting|painting.gallery}
  end

  def cities
    self.paintings.map{|painting|painting.gallery.city}
  end

  def self.total_experience
    @@all.map{|artist|artist.years_experience}.sum
  end

  def self.most_prolific
    exp_all = @@all.map{|artist| artist.profile}
    most_exp = exp_all.sort.last
    @@all.select{|artist| artist.profile == most_exp}
  end

  def create_painting(title, price, gallery)
    title = Painting.new(title, price, gallery)
    title.artist = self
  end

end

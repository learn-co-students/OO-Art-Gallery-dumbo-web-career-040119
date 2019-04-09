class Gallery

  attr_reader :name, :city

  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    paintings = Painting.all.select do |painting|
      painting.gallery == self
    end
    #binding.pry
  end

  def artists
    artists = self.paintings.map do |paintings|
      paintings.owner
    end
  end

  def artist_names

    artist_names = self.artists.map do |artists|
      artists.name      
    end

  end

  def most_expensive_painting
    empty_arr = []
    expensive_price = 0
    self.paintings.map do |paintings|
      #binding.pry
      if paintings.price > expensive_price
        expensive_price = paintings.price
        empty_arr = paintings
      end
    end
    empty_arr
  end

  def self.all
    @@all
  end

end

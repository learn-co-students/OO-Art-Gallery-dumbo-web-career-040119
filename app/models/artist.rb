class Artist

  attr_reader :name, :years_experience, :total

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    painting = Painting.all.select do |paintings|
      paintings.owner == self
    end
  end
  
  def galleries
    gallery = self.paintings.map do |paintings|
      paintings.gallery
      
    end
    #binding.pry
  end

  def cities
    #binding.pry
    cities = self.galleries.map do |galleries|
      galleries.city
    end
  end

  def self.total_experience
    #binding.pry
    @total = 0
    Painting.all.map do |paintings|
      #binding.pry
      @total += paintings.owner.years_experience
    end
    @total
  end

  def self.most_prolific
    #binding.pry
    current_avg = 0
    empty_arr = []
    self.all.map do |artist|
      #puts current_avg
      average = artist.paintings.length.to_f / artist.years_experience.to_f
      if average > current_avg
        current_avg = average
        empty_arr = artist
        
      end
    end
    empty_arr
  end

  def create_painting(title,price,gallery)
    Painting.new(title,price,gallery,self)
  end

  def self.all
    @@all
  end

end

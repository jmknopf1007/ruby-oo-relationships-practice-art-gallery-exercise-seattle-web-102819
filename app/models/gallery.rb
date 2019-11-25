class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self 
    end
  end

  def artists
    final_artist = paintings.map do |painting|
      painting.artist 
    end
    final_artist.uniq 
  end

  def artist_name
    artists.map do |artist|
      artist.name 
    end
  end

  def most_expensive_painting
      paintings.max_by do |painting|
        painting.price
      end
    end


end

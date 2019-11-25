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
    final_gallery = paintings.map do |painting|
      painting.gallery 
    end
    final_gallery.uniq.compact  
  end

  def cities
    final_city = galleries.map do |gallery|
      gallery.city 
    end
    final_city.uniq 
  end

  # Returns an integer that is the total years of experience of all artists

  def self.total_experience
    result = @@all.map do |artist|
      artist.years_experience
    end
    result.sum 
  end

  # Returns an instance of the artist with the highest 
  # amount of paintings per year of experience.
  
  # looking for amount of paintings for an artist

   # paintings.count

  # find out how many years of exp

   # artist.years_of_exp 

   # average of the two lists

   # paintings.count.to_f / artist.years_of_exp  

  def self.most_prolific
    @@all.max_by do |artist|
      artist.paintings.count.to_f / artist.years_experience 
    end
  end


  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery) 
  end


  
end

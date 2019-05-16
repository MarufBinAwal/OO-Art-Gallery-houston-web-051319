class Artist


  @@all = []

  def self.all
    @@all
  end

  def self.total_experience
    years = Artist.all.map do |artist_obj|
      artist_obj.years_experience
    end
    years.reduce(0) {|sum, num| sum + num }
    
  end

  def self.most_prolific
    most_prolific_artist = Artist.all[0]
    best_ratio = (most_prolific_artist.paintings.size) / most_prolific_artist.years_experience
    Artist.each do |artist_object|
      painting = artist_object.paintings.size/artist_object.years_experience
      if painting>best_ratio
        most_prolific_artist=artist_object
      end
    end
    most_prolific_artist

  end

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end

  def paintings

      Painting.all.select do | painting_object |
        painting_object.name == self
      end
    
  end

  def galleries

    Painting.all.select do | painting_object |
      painting_object.name == self
    end
  end

  def cities
       new = Painting.all.select do | gallery_object |
       gallery_object.name == self
       end
       new.map do |galleries_obj|
        galleries_obj.location.city
      end
  end

  def create_paintings(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

end

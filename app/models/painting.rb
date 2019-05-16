class Painting

  @@all = []

  def self.all
    @@all
  end

  def self.total_price
  end

  attr_reader :title, :price, :name, :location


  def initialize(title, price, name, location)
    @title = title
    @price = price
    @name = name
    @location = location
    @@all << self
  end

end

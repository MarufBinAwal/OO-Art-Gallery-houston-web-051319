require_relative '../config/environment.rb'

leo = Artist.new("Leo", 15)
van_gogh = Artist.new("Van_Gogh", 10)

met = Gallery.new("MET", "Houston")
lacma = Gallery.new("LACMA", "Los Angeles")

lisa = Painting.new("Mona lisa", 10, leo, met)
night = Painting.new("Starry Night", 10, leo, lacma)
david = Painting.new("David", 10, leo, lacma)




binding.pry

puts "Bob Ross rules."

class Museum
  attr_accessor :id, :gallery, :artist, :value
  
  @@galleries = []
  @@artists = []
  

  def self.artists
    @@artists
  end

  
  def self.galleries
    @@galleries
  end

  def self.new_from_csv
    file = File.dirname(File.dirname(File.expand_path(__FILE__))) + '/art_heist.csv'
    paintings_file =  File.open(file).read
    rows = paintings_file.split("\n")
    rows.each do |row|
      
      data = row.split(",")
      id = data[0]
      artist =  @@artists.find {|artist| artist.name == data[3]} ? @@artists.find {|artist| artist.name == data[3]} : Artist.new(data[3])
      gallery = @@galleries.find {|gallery| gallery.name == data[1]} ?
        @@galleries.find {|gallery| gallery.name == data[1]}
        : Gallery.new(data[1])
      painting = Painting.new(data[2], artist, data[4].chomp.to_i)
      gallery.paintings << painting
      artist.paintings << painting
    
      @@artists << artist if @@artists.none? {|existing_artist| existing_artist == artist }
      @@galleries << gallery if @@galleries.none? {|existing_gallery| existing_gallery == gallery }
    end
  end

  def self.biggest_gallery
    @@galleries.max_by {|gallery|
      gallery.paintings.length
    }.name
  end

  def self.smallest_gallery
    @@galleries.min_by {|gallery|
      gallery.paintings.length
    }.name
  end

  def self.artist_most_occurring
    artist_hash = {}
    Painting.all.each {|painting|
      if artist_hash[painting.artist]
        artist_hash[painting.artist] += 1
      else
        artist_hash[painting.artist] = 1
      end
    }
    artist_hash.max_by {|k,v| v}[0].name
  end
  
  def self.value_of_artist(artist_name)
    artist = @@artists.find {|artist| artist.name == artist_name}
    values = artist.paintings.map {|painting| painting.value}
    values.inject(0) {|sum, x| sum + x}
  end
  
  def self.value_of_artist(artist_name)
    artist = @@artists.find {|artist| artist.name == artist_name}
    values = artist.paintings.map {|painting| painting.value}
    values.inject(0) {|sum, x| sum + x}
  end
  

end
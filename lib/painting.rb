class Painting

  attr_accessor :name, :artist, :value

  @@all = []

  def initialize(name, artist, value )
    @name = name
    @artist = artist
    @value = value
    @@all << self
  end

  def self.all
    @@all
  end


end

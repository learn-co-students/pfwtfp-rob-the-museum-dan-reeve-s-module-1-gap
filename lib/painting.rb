class Painting
  attr_reader :value, :title

  @@data = []
  @@artist_lookup = Hash.new{|h,k| h[k] = []}

  def initialize(id, title, artist, value)
    @id, @title, @artist, @value = id, title, artist, value
  end

  def self.create(id, title, artist, value)
    @@data << (new_p = Painting.new(id, title, artist, value))
    @@artist_lookup[artist] << new_p
    new_p
  end

end
